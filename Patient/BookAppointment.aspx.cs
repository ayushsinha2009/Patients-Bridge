using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_BookAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnbook_Click(object sender, EventArgs e)
    {
        string email=Session["PatientEmail"].ToString();
        DataBaseManager dbm = new DataBaseManager();
        string sql1 = "insert into Appointment(Name,Age,Gender,Doctor,Date,Description,Time,Status,Mobile,UserEmail) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + gender.SelectedItem.Text + "','" + doctor.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','Not Allocated','Pending','" + TextBox5.Text + "','" + email + "')";
        if(dbm.ExecuteIUD(sql1))
        {
            Response.Write("<script>alert('Appointment Booked, You will recieve an confirmation SMS'); window.location.href='ViewBookedAppointments.aspx'; </script>");
        }
        else
        {
            Response.Write("<script>alert('Something went wrong.')</script>");
        }
    }
}