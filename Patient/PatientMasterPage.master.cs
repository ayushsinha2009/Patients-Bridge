using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Patient_PatientMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["PatientEmail"].ToString()))
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                string regemail = Session["PatientEmail"].ToString();
                DataBaseManager dbm = new DataBaseManager();
                string sql1 = "select * from RegistrationTbl where Email='" + regemail + "'";
                DataTable dt = new DataTable();
                dt = dbm.ExecuteSelect(sql1);
                username.Text = "Hello, " + dt.Rows[0]["Name"].ToString();

            }
        }
        catch (Exception)
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["PatientEmail"].ToString()))
            {
                Response.Redirect("../Login.aspx");
            }
        }
        catch (Exception)
        {
            Response.Redirect("../Login.aspx");
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("../Login.aspx");
    }
}
