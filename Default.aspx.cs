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
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    private static User user = null;
    readonly static string PATH = AppDomain.CurrentDomain.BaseDirectory + "\\Returns\\";
    readonly static string ADMIN = "Admin\\Users\\";
    readonly static string PREPARERS = "Preparers\\";
    static string[] questions = { "1. How many days were you in training and away from home for Delta?", "2. How much cash do you tip your driver on layovers ($1, $2, $5, etc)?",
    "3. Total money spent on cabs, trains, ubers, etc while away on layovers?", "4. Currency exchange fees, atm, or foriegn fees on debit/credit cards?",
    "5. Uniform fees and any leggings/pantyhose expenses?", "6. Laundry/Dry Cleaning costs for Uniforms?", "7. Flight gear/Luggage?", "8. iPad, Cell Phone purchase, etc? % Used for work?",
    "9. Total Cell Phone Bill for the year? % Used for work?", "10. Total internet bill? % Used for work?", "11. Visas, Passport fees, and any misc items needed for work?",
    "12. Total for all other Unreimbursed Employee expenses?"};

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

    public static User User
    {
        get
        {
            if (UserId == 0)
                return null;
            else if(user != null)
            {
                return user;
            }
            else
            {
                
                using (WorkTripEntities db = new WorkTripEntities())
                {
                    db.Database.Connection.Open();
                    User t = (from u in db.Users where u.Id == UserId select u).FirstOrDefault();
                    db.Database.Connection.Close();
                    user = t;
                    return t;
                }
             }
        }
        set
        {
            user = value;
        }
    }
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        User t = null;
        if (User == null)
        {
            // Get the Facebook code from the querystring
            if (Request.QueryString["code"] != "")
            {
                var obj = GetFacebookUserData(Request.QueryString["code"]);
                using (WorkTripEntities db = new WorkTripEntities())
                {
                    db.Database.Connection.Open();
                    foreach (FacebookUser.User fUser in obj)
                    {
                        if (SignUpId != 0)//Signup
                        {
                            t = (from u in db.Users where u.Id == SignUpId select u).FirstOrDefault();
                            if (t != null)
                            {
                                t.EmailAddress = fUser.email;
                                t.FacebookId = fUser.id;
                                db.SaveChanges();
                                UserId = t.Id;
                                SignUpId = 0;
                            }
                        }
                        else//login
                        {
                            t = (from u in db.Users where u.FacebookId == fUser.id select u).FirstOrDefault();
                            if (t != null)
                            {
                                UserId = t.Id;
                                user = t;
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

    [WebMethod]
    public static string SubmitPersonalInfo(string firstName, string middleName, string lastName, string airport, string email, string phone, string dateOfBirth, string address)
    {
        if (User != null)
        {
            using (WorkTripEntities db = new WorkTripEntities())
            {
                db.Database.Connection.Open();
                User = (from u in db.Users where u.Id == User.Id select u).FirstOrDefault();
                User.FirstName = firstName == "" ? User.FirstName : firstName;
                User.MiddleName = middleName == "" ? User.MiddleName : middleName;
                User.LastName = lastName == "" ? User.LastName : lastName;
                User.Airport = airport == "" ? User.Airport : airport;
                User.EmailAddress = email == "" ? User.EmailAddress : email;
                User.Phone = phone == "" ? User.Phone : phone;
                User.DateOfBirth = dateOfBirth == "" ? User.DateOfBirth : dateOfBirth;
                User.Address = address == "" ? User.Address : address;
                db.SaveChanges();
                db.Database.Connection.Close();
                return "success";
            }
        }
        else
        {
            return "fail";
        }
    }

    [WebMethod]
    public static string SubmitTaxQuestions(string[] answers)
    {
        if (!File.Exists(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt"))
        {
            WriteToFile(answers);
        }
        else if (File.Exists(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt"))
        {
            File.Delete(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt");
            WriteToFile(answers);
        }
        return "success";
    }

    private static void WriteToFile(string[] answers)
    {
        File.Create(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt").Dispose();
        TextWriter tw = new StreamWriter(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt");
        for (int i = 0; i < answers.Length; i++)
        {
            tw.WriteLine(questions[i]);
            tw.WriteLine(answers[i]);
            tw.WriteLine();
        }
        tw.Close();
        File.Create(string.Format("{0}{1}{2}{3}{4}{5}", PATH, PREPARERS, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt").Dispose();
        tw = new StreamWriter(string.Format("{0}{1}{2}{3}{4}{5}", PATH, PREPARERS, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt");
        for (int i = 0; i < answers.Length; i++)
        {
            tw.WriteLine(questions[i]);
            tw.WriteLine(answers[i]);
            tw.WriteLine();
        }
        tw.Close();

        UserMiscDoc userDoc = new UserMiscDoc();
        userDoc.UserId = User.Id;
        userDoc.Path = string.Format("{0}{1}{2}{3}{4}{5}", PATH, PREPARERS, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt";
        userDoc.Date = DateTime.Today.ToShortDateString();
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            db.UserMiscDocs.Add(userDoc);
            db.SaveChanges();
            db.Database.Connection.Close();
        }
    }

    #region Getters
    [WebMethod]
    public static string GetFirstName()
    {
        if (User != null)
        {
            return User.FirstName;
        }
        else
            return "Fail";
    }
    [WebMethod]
    public static string GetMiddleName()
    {
        if (User != null)
        {
            return User.MiddleName != null ? User.MiddleName : "";
        }
        else
            return "Fail";
    }
    [WebMethod]
    public static string GetLastName()
    {
        if (User != null)
        {
            return User.LastName;
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetAirport()
    {
        if (User != null)
        {
            return User.Airport != null ? User.Airport : "";
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetEmail()
    {
        if (User != null)
        {
            return User.EmailAddress != null ? User.EmailAddress : "";
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetPhone()
    {
        if (User != null)
        {
            return User.Phone != null ? User.Phone : "";
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetDateOfBirth()
    {
        if (User != null)
        {
            return User.DateOfBirth != null ? User.DateOfBirth : "";
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetAddress()
    {
        if (User != null)
        {
            return User.Address != null ? User.Address : "";
        }
        else
            return "Fail";
    }

    [WebMethod]
    public static string GetAnswers()
    {
        Answers answers = new Answers();
        string[] answerArray = new string[12];
        if(User == null)
        {
            return "fail";
        }
        else
        {
            if (!File.Exists(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt"))
            {
                return "";
            }
            else
            {
                var filestream = new System.IO.FileStream(string.Format("{0}{1}{2}{3}{4}{5}", PATH, ADMIN, User.FirstName, User.MiddleName, User.LastName, User.Phone.Substring(User.Phone.Length - 4)) + "\\" + "Answers.txt",
                                          System.IO.FileMode.Open,
                                          System.IO.FileAccess.Read);
                var file = new System.IO.StreamReader(filestream, System.Text.Encoding.UTF8, true, 128);
                string line;
                int count = 0;
                while ((line = file.ReadLine()) != null)
                {
                    if(count %3 == 1)
                    {
                        answerArray[count / 3] = line;
                    }
                    count++;
                }
                file.Close();
                filestream.Close();
                answers.answer1 = answerArray[0];
                answers.answer2 = answerArray[1];
                answers.answer3 = answerArray[2];
                answers.answer4 = answerArray[3];
                answers.answer5 = answerArray[4];
                answers.answer6 = answerArray[5];
                answers.answer7 = answerArray[6];
                answers.answer8 = answerArray[7];
                answers.answer9 = answerArray[8];
                answers.answer10 = answerArray[9];
                answers.answer11 = answerArray[10];
                answers.answer12 = answerArray[11];
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                var json = serializer.Serialize(answers);
                return json;
            }
        }
    }
    #endregion
}