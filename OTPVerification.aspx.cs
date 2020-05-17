using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class OTPVerification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(String.IsNullOrEmpty(Session["RegEmail"].ToString()))
            {
                Response.Redirect("Registration.aspx");
            }
            else
            {
                string regemail = Session["RegEmail"].ToString();
                DataBaseManager dbm = new DataBaseManager();
                string sql1 = "select * from RegistrationTbl where Email='"+regemail+"'";
                DataTable dt = new DataTable();
                dt = dbm.ExecuteSelect(sql1);
                otpmobile.Text = dt.Rows[0]["Mobile"].ToString();
            }
        }
        catch(Exception)
        {
            Response.Redirect("Registration.aspx");
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
            if (String.IsNullOrEmpty(Session["RegEmail"].ToString()))
            {
                Response.Redirect("Registration.aspx");
            }
        }
        catch (Exception)
        {
            Response.Redirect("Registration.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string regemail = Session["RegEmail"].ToString();
        DataBaseManager dbm = new DataBaseManager();
        string sql1 = "select * from RegistrationTbl where Email='" + regemail + "'";
        DataTable dt = new DataTable();
        dt = dbm.ExecuteSelect(sql1);

        string otp = dt.Rows[0]["otp"].ToString();

        if(TextBox1.Text==otp)
        {
            string sql = "update RegistrationTbl set OTPStatus='" + true + "' where Email='" + regemail + "'";
            dbm.ExecuteIUD(sql);

            Response.Write("<script>alert('OTP Verified Successfully, Now you can login into your account'); window.location.href='Login.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('OTP Invalid. Please Enter Correct OTP.');</script>");
        }

    }
    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        string regemail = Session["RegEmail"].ToString();
        DataBaseManager dbm = new DataBaseManager();
        string sql1 = "select * from RegistrationTbl where Email='" + regemail + "'";
        DataTable dt = new DataTable();
        dt = dbm.ExecuteSelect(sql1);

        string name = dt.Rows[0]["Name"].ToString();
        string mobile = dt.Rows[0]["Mobile"].ToString();
        string otp = dt.Rows[0]["OTP"].ToString();

        SMSSender sms = new SMSSender();
        string message = "Dear " + name + ", Your OTP Verification Code is - " + otp;
        bool smsst = sms.SendSMS(mobile, message);

        // Create Session for OTP Verification

        Session["RegEmail"] = regemail;
        Response.Write("<script>alert('We have Resent you OTP Code, Please enter to proceed.'); window.location.href='OTPVerification.aspx';</script>");
    }
}