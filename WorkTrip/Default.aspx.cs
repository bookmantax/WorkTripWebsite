using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Collections;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    #region Properties
    public static int UserId
    {
        get
        {
            if (HttpContext.Current.Session["UserId"] == null)
                HttpContext.Current.Session["UserId"] = 0;
            return (int)HttpContext.Current.Session["UserId"];
        }
        set
        {
            HttpContext.Current.Session["UserId"] = value;
        }
    }

    public static int SignUpId
    {
        get
        {
            if (HttpContext.Current.Session["SignUpId"] == null)
                HttpContext.Current.Session["SignUpId"] = 0;
            return (int)HttpContext.Current.Session["SignUpId"];
        }
        set
        {
            HttpContext.Current.Session["SignUpId"] = value;
        }
    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        
        // Get the Facebook code from the querystring
        if (Request.QueryString["code"] != "")
        {
            var obj = GetFacebookUserData(Request.QueryString["code"]);
            using (TestEntities db = new TestEntities())
            {
                db.Database.Connection.Open();
                foreach (FacebookUser.User user in obj)
                {
                    if (SignUpId != 0)//Signup
                    {
                        Test t = (from u in db.Tests where u.Id == SignUpId select u).FirstOrDefault();
                        if(t != null)
                        {
                            t.EmailAddress = user.email;
                            t.FacebookId = user.id;
                            db.SaveChanges();
                            UserId = t.Id;
                            SignUpId = 0;
                        }
                    }
                    else//login
                    {
                        Test t = (from u in db.Tests where u.EmailAddress == user.email && u.FacebookId == user.id select u).FirstOrDefault();
                        if (t != null)
                        {
                            UserId = t.Id;
                        }
                    }
                }
                db.Database.Connection.Close();
            }
        }
        //if user not logged in dont give access
        if (UserId == 0)
        {
            Response.Redirect("index.aspx", true);
        }
    }

    protected List<FacebookUser.User> GetFacebookUserData(string code)
    {
        // Exchange the code for an access token
        Uri targetUri = new Uri("https://graph.facebook.com/oauth/access_token?client_id=" + ConfigurationManager.AppSettings["FacebookAppId"] + "&client_secret=" + ConfigurationManager.AppSettings["FacebookAppSecret"] + "&redirect_uri=http://" + Request.ServerVariables["SERVER_NAME"] + ":" + Request.ServerVariables["SERVER_PORT"] + "/Default.aspx&code=" + code);
        HttpWebRequest at = (HttpWebRequest)HttpWebRequest.Create(targetUri);

        System.IO.StreamReader str = new System.IO.StreamReader(at.GetResponse().GetResponseStream());
        string token = str.ReadToEnd().ToString().Replace("access_token=", "");

        // Split the access token and expiration from the single string
        string[] combined = token.Split('&');
        string accessToken = combined[0];

        // Exchange the code for an extended access token
        Uri eatTargetUri = new Uri("https://graph.facebook.com/oauth/access_token?grant_type=fb_exchange_token&client_id=" + ConfigurationManager.AppSettings["FacebookAppId"] + "&client_secret=" + ConfigurationManager.AppSettings["FacebookAppSecret"] + "&fb_exchange_token=" + accessToken);
        HttpWebRequest eat = (HttpWebRequest)HttpWebRequest.Create(eatTargetUri);

        StreamReader eatStr = new StreamReader(eat.GetResponse().GetResponseStream());
        string eatToken = eatStr.ReadToEnd().ToString().Replace("access_token=", "");

        // Split the access token and expiration from the single string
        string[] eatWords = eatToken.Split('&');
        string extendedAccessToken = eatWords[0];

        // Request the Facebook user information
        Uri targetUserUri = new Uri("https://graph.facebook.com/me?fields=first_name,last_name,email,gender,locale,link&access_token=" + accessToken);
        HttpWebRequest user = (HttpWebRequest)HttpWebRequest.Create(targetUserUri);

        // Read the returned JSON object response
        StreamReader userInfo = new StreamReader(user.GetResponse().GetResponseStream());
        string jsonResponse = string.Empty;
        jsonResponse = userInfo.ReadToEnd();

        // Deserialize and convert the JSON object to the Facebook.User object type
        JavaScriptSerializer sr = new JavaScriptSerializer();
        string jsondata = jsonResponse;
        FacebookUser.User converted = sr.Deserialize<FacebookUser.User>(jsondata);

        // Write the user data to a List
        List<FacebookUser.User> currentUser = new List<FacebookUser.User>();
        currentUser.Add(converted);

        // Return the current Facebook user
        return currentUser;
    }
}