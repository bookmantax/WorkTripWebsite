<%@ WebHandler Language="C#" Class="fileUploader" %>

using System;
using System.Web;
using System.IO;
using System.Linq;
public class fileUploader : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    readonly static string ADMIN = "Admin\\Users\\";
    readonly static string PREPARERS = "Preparers\\";

    public void ProcessRequest(HttpContext context)
    {
        int userId = HttpContext.Current.Session["UserId"] == null ? 0 : Int32.Parse(HttpContext.Current.Session["UserId"].ToString());
        User user = null;
        context.Response.ContentType = "multipart/form-data";
        if (userId != 0)
        {
            try
            {
                using (WorkTripEntities db = new WorkTripEntities())
                {
                    db.Database.Connection.Open();
                    user = (from u in db.Users where u.Id == userId select u).FirstOrDefault();
                    db.Database.Connection.Close();
                }
                if (user != null)
                {
                    string dirFullPath = HttpContext.Current.Server.MapPath("~/Returns/");
                    string[] files;
                    files = System.IO.Directory.GetFiles(dirFullPath);
                    foreach (string s in context.Request.Files)
                    {
                        HttpPostedFile file = context.Request.Files[s];
                        if (!string.IsNullOrEmpty(file.FileName))
                        {
                            string adminPath = string.Format("{0}{1}{2}{3}{4}{5}", dirFullPath, ADMIN, user.FirstName, user.MiddleName, user.LastName, user.Phone.Substring(user.Phone.Length - 4));
                            System.IO.Directory.CreateDirectory(adminPath);

                            //Figure our which preparer to save to
                            string preparerPath = string.Format("{0}{1}{2}{3}{4}{5}", dirFullPath, PREPARERS, user.FirstName, user.MiddleName, user.LastName, user.Phone.Substring(user.Phone.Length - 4));
                            System.IO.Directory.CreateDirectory(preparerPath);
                            UserMiscDoc userDoc = new UserMiscDoc();
                            userDoc.UserId = user.Id;
                            userDoc.Path = preparerPath + "\\" + file.FileName;
                            userDoc.Date = DateTime.Today.ToShortDateString();
                            using (WorkTripEntities db = new WorkTripEntities())
                            {
                                db.Database.Connection.Open();
                                db.UserMiscDocs.Add(userDoc);
                                db.SaveChanges();
                                db.Database.Connection.Close();
                            }
                            file.SaveAs(adminPath + "\\" + file.FileName);
                            file.SaveAs(preparerPath + "\\" + file.FileName);
                        }
                    }
                }
            }
            catch (Exception ac)
            {

            }
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}