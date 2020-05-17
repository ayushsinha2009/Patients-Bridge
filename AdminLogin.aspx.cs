using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataBaseManager dbm = new DataBaseManager();
        string email = TextBox1.Text;
        string password = TextBox2.Text;

        CryptoGraphy cg = new CryptoGraphy();
        password = cg.MD5Hash(password);
        string sql1 = "select * from Admin where Email='" + email + "' and Password='" + password + "'";
        DataTable dt1 = new DataTable();
        dt1 = dbm.ExecuteSelect(sql1);
        if (dt1.Rows.Count > 0)
        {
            Session["AdminEmail"] = email;
            Response.Redirect("Admin/Dashboard.aspx");
        }
        else
        {
            Response.Write("<script>alert('Email ID or Password id Incorrect.')</script>");
        }

    }
}