using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for EmailSender
/// </summary>
public class EmailSender
{
    public string To { get; set; }
    public string Subject { get; set; }
    public String Message { get; set; }

    public bool sendmail()
    {
        SmtpClient client = new SmtpClient();
        MailMessage mail = new MailMessage();
        MailAddress sendto = new MailAddress(To);
        MailAddress from = new MailAddress("himanshukashyap.gpu@gmail.com");

        NetworkCredential nc = new NetworkCredential("himanshukashyap.gpu@gmail.com", "hkashyap@gpu");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.Credentials = nc;

        mail.IsBodyHtml = true;
        mail.Sender = from;
        mail.Subject = Subject;
        mail.To.Add(sendto);
        mail.Body = Message;
        mail.From = from;

        client.Send(mail);
        return true;

    }
}