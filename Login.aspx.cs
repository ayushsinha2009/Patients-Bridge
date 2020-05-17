using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataBaseManager dbm = new DataBaseManager();
        string email = TextBox1.Text;
        string password = TextBox2.Text;
        string sql = "select * from RegistrationTbl where Email='" + email + "'";
        DataTable dt = new DataTable();
        dt = dbm.ExecuteSelect(sql);
        if (dt.Rows.Count > 0)
        {
            bool otpst = Convert.ToBoolean(dt.Rows[0]["OTPStatus"]);
            if (otpst)
            {
                CryptoGraphy cg = new CryptoGraphy();
                password = cg.MD5Hash(password);
                string sql1 = "select * from RegistrationTbl where Email='" + email + "' and Password='" + password + "'";
                DataTable dt1 = new DataTable();
                dt1 = dbm.ExecuteSelect(sql1);
                if (dt1.Rows.Count > 0)
                {
                    Session["PatientEmail"] = email;
                    Response.Redirect("Patient/Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Password Invalid.')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('OTP Not Verified, You can not Login. Contact to Admin.')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Email Invalid.')</script>");
        }
    }
}