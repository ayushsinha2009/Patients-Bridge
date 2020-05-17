using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

public class SMSSender
{
    public bool SendSMS(string Mobile, string Message)
    {
        string username = HttpUtility.UrlEncode("AyushSinha");
        string password = HttpUtility.UrlEncode("AyushSinha");
        string senderid = HttpUtility.UrlEncode("DRASYS");
        Mobile = HttpUtility.UrlEncode(Mobile);
        Message = HttpUtility.UrlEncode(Message);

        string api = "http://sendsms.sandeshwala.com/API/WebSMS/Http/v1.0a/index.php?username=" + username + "&password=" + password + "&sender=" + senderid + "&to=" + Mobile + "&message=" + Message + "&reqid=1&format={json|text}&route_id=205";

        WebClient wc = new WebClient();
        string res = wc.DownloadString(api);
        if (String.IsNullOrEmpty(res))
        {
            return false;
        }
        else
        {
            return true;
        }

    }
}