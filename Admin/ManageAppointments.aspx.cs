using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ManageAppointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        string h = ddlhour.SelectedItem.Value;
        string m = ddlminute.SelectedItem.Value;
        string t = ddltiming.SelectedItem.Value;
        string time = h + ":" + m + " " + t;
        string a = appid.Text;

        DataBaseManager dbm = new DataBaseManager();
        string sql = "update Appointment set Time='"+time+"', Status='Confirmed' where Id='"+a+"' ";
        if(dbm.ExecuteIUD(sql))
        {
            DataTable dt = new DataTable();
            string sql1 = "select * from Appointment where Id='" + a + "'";
            dt = dbm.ExecuteSelect(sql1);

            string mobile = dt.Rows[0]["Mobile"].ToString();
            string name = dt.Rows[0]["Name"].ToString();
            string doctor = dt.Rows[0]["Doctor"].ToString();
            string date = dt.Rows[0]["Date"].ToString();
            string message = "Dear "+name+", Your Appointment has been confirmed with "+doctor+" on "+date+" at "+time+". Thanks";
            SMSSender sms = new SMSSender();
            sms.SendSMS(mobile, message);
            Response.Write("<script>alert('Appointment Confirmed.');</script>");
        }
        else
        {
            Response.Write("<script>alert('Something went wrong.');</script>");
        }
        
    }
}