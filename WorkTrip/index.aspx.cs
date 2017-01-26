using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.IO;
using Twilio;

public partial class index : System.Web.UI.Page
{
    public HttpContext context;
    // set our AccountSid and AuthToken
    public static  string AccountSid = "AC0b45e8cfdad89a2ac132bd463495ef99";
    public static string AuthToken = "2b10d68d207413a633e9b519c6e6673e";

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
        
    }

    #region WebMethods
    [WebMethod]
    public static string SendSms(string FirstName, string LastName, int phone1, int phone2, int phone3)
    {
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            string phone = (phone1.ToString() + phone2.ToString() + phone3.ToString());
            User t = (from u in db.Users where u.FirstName == FirstName && u.LastName == LastName && u.Phone == phone select u).FirstOrDefault();
            if (t != null)
            {
                db.Database.Connection.Close();
                return "Duplicate";
            }
            else
            {
                string verify = CreateVerificationCode();
                t = new User();
                t.FirstName = FirstName;
                t.LastName = LastName;
                t.Phone = phone1.ToString() + phone2.ToString() + phone3.ToString();
                t.VerificationCode = verify;
                t.EmailAddress = "blank";
                t.Password = "changeme";
                db.Users.Add(t);
                db.SaveChanges();
                SignUpId = t.Id;
                // instantiate a new Twilio Rest Client
                var client = new TwilioRestClient(AccountSid, AuthToken);
                // make an associative array of people we know, indexed by phone number
                var people = new Dictionary<string, string>() {
                { "+1" + t.Phone, t.FirstName + " " + t.LastName}
            };

                // iterate over all our friends
                foreach (var person in people)
                {

                    // Send a new outgoing SMS by POSTing to the Messages resource */
                    client.SendMessage(
                        "717-963-2108", // From number, must be an SMS-enabled Twilio number
                        person.Key,     // To number, if using Sandbox see note above
                                        // message content
                        string.Format("Here is your verification code: {0}", verify)
                    );
                }
                db.Database.Connection.Close();
                return "Success";
            }
        }
    }

    [WebMethod]
    public static string CheckDuplicate(string FirstName, string LastName, int phone1, int phone2, int phone3)
    {
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            string phone = (phone1.ToString() + phone2.ToString() + phone3.ToString());
            User t = (from u in db.Users where u.FirstName == FirstName && u.LastName == LastName && u.Phone == phone select u).FirstOrDefault();
            if (t != null)
            {
                db.Database.Connection.Close();
                return "Duplicate";
            }
            else
            {
                db.Database.Connection.Close();
                return "Success";
            }
        }
    }

    [WebMethod]
    public static string VerifyHuman(string code, string firstName, string lastName)
    {
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            User t = (from u in db.Users where u.FirstName == firstName && u.LastName == lastName && u.VerificationCode == code select u).FirstOrDefault();
            if (t != null)
            {
                t.Verified = true;
                db.SaveChanges();
                db.Database.Connection.Close();
                return "Success";
            }
            db.Database.Connection.Close();
            return "Fail";
        }
    }

    [WebMethod]
    public static string CreateLogin(string FirstName, string LastName, string code, string email, string password)
    {
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            User t = (from u in db.Users where u.FirstName == FirstName && u.LastName == LastName && u.VerificationCode == code select u).FirstOrDefault();
            if (t != null)
            {
                t.EmailAddress = email;
                t.Password = password;
                UserId = t.Id;
                db.SaveChanges();
                db.Database.Connection.Close();
                return "Default.aspx";
            }
            db.Database.Connection.Close();
            return "Fail";
        }
    }

    [WebMethod]
    public static string Login(string email, string password)
    {
        using (WorkTripEntities db = new WorkTripEntities())
        {
            db.Database.Connection.Open();
            User t = (from u in db.Users where u.EmailAddress == email && u.Password == password select u).FirstOrDefault();
            if (t != null)
            {
                UserId = t.Id;
                return "Default.aspx";
            }
            return "fail";
        }
    }
    #endregion

    private static string CreateVerificationCode()
    {
        Random r = new Random();
        int rand =  r.Next(1000, 9999);
        return rand.ToString();
    }
}