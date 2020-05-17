using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["AdminEmail"].ToString()))
            {
                Response.Redirect("../AdminLogin.aspx");
            }
            else
            {
                string regemail = Session["AdminEmail"].ToString();
                DataBaseManager dbm = new DataBaseManager();
                string sql1 = "select * from Admin where Email='" + regemail + "'";
                DataTable dt = new DataTable();
                dt = dbm.ExecuteSelect(sql1);
                username.Text = "Hello, " + dt.Rows[0]["Name"].ToString();

            }
        }
        catch (Exception)
        {
            Response.Redirect("../AdminLogin.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["AdminEmail"].ToString()))
            {
                Response.Redirect("../AdminLogin.aspx");
            }
        }
        catch (Exception)
        {
            Response.Redirect("../AdminLogin.aspx");
        }
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("../AdminLogin.aspx");
    }
}
