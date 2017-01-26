<%@ WebHandler Language="C#" Class="AskAQuestion" %>

using System;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

public class AskAQuestion : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "application/json";
        string response;
        var jsonSerializer = new JavaScriptSerializer();
        var jsonString = String.Empty;

        context.Request.InputStream.Position = 0;
        using (var inputStream = new StreamReader(context.Request.InputStream))
        {
            jsonString = inputStream.ReadToEnd();
        }

        MessageUser mUser = jsonSerializer.Deserialize<MessageUser>(jsonString);

        if (mUser.firstName == "" || mUser.lastName == "" || (mUser.email == "" && mUser.phone == "") || mUser.message == "")
        {
            response = "missing";
        }
        else
        {
            MailMessage message = new System.Net.Mail.MailMessage();
            string fromEmail = "questions@worktrip.tax";
            string fromPW = "Bookmantax12@";
            string toEmail = "questions@worktrip.tax";
            message.From = new MailAddress(fromEmail);
            message.To.Add(toEmail);
            message.Subject = "Submitted Question";
            message.Body = "Name: " + mUser.firstName + " " + mUser.lastName + "\nEmail: " +
                    mUser.email + "\nPhone: " + mUser.phone + "\nMessage: " + mUser.message;
            message.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

            using (SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587))
            {
                smtpClient.EnableSsl = true;
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(fromEmail, fromPW);

                try
                {
                    smtpClient.Send(message.From.ToString(), message.To.ToString(),
                                    message.Subject, message.Body);
                    response = "success";
                }
                catch (Exception ex)
                {
                    response = "fail";
                }
            }
        }
        context.Response.Write(jsonSerializer.Serialize(response));
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}