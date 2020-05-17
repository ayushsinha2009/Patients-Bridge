using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string age = TextBox2.Text;
        string mobile = TextBox3.Text;
        string gender = RadioButtonList1.SelectedItem.Text;
        string email = TextBox4.Text;
        string password = TextBox5.Text;
        CryptoGraphy cg = new CryptoGraphy();
        password = cg.MD5Hash(password);
        string specialmedical = TextBox6.Text;

        Random rnd = new Random();

        string otp = rnd.Next(100000, 999999).ToString();
        bool otpstatus = false;

        string date = DateTime.Now.ToString("MM/dd/yyyy");
        string time = DateTime.Now.ToString("HH:mm:ss");

        DataBaseManager dbm = new DataBaseManager();

        string checkemail = "select * from RegistrationTbl where Email='" + email + "'";
        DataTable dt = new DataTable();
        dt = dbm.ExecuteSelect(checkemail);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('Email ID is already registered. Please use another Email ID')</script>");
        }
        else
        {
            string query = "insert into RegistrationTbl(Name,Age,Mobile,Gender,Email,Password,SpecialMedicalCondition,OTP,OTPStatus,Date,Time) values('" + name + "','" + age + "','" + mobile + "','" + gender + "','" + email + "','" + password + "','" + specialmedical + "','" + otp + "','" + otpstatus + "','" + date + "','" + time + "')";
            if (dbm.ExecuteIUD(query))
            {
                // send OTP and Redirect to OTP Verification page

                SMSSender sms = new SMSSender();
                string message = "Dear " + name + ", Your OTP Verification Code is - " + otp;
                bool smsst = sms.SendSMS(mobile, message);
                
                // Create Session for OTP Verification

                Session["RegEmail"] = email;

                Response.Write("<script>alert('Data Saved. We have sent you OTP Code, Please enter to proceed.'); window.location.href='OTPVerification.aspx';</script>");
            }
            else
            {
                // Query Error
                Response.Write("<script>alert('Something went wrong, please try again leter, some technical issue.')</script>");
            }
        }


    }
}