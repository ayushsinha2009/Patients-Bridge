using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = "insert into Contact(Name,Email,Subject,Message) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        DataBaseManager dbm = new DataBaseManager();
        if(dbm.ExecuteIUD(sql1))
        {
            Response.Write("<script>alert('Message Sent Successfully'); window.location.href='ContactUs.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Something went wrong, please try again letter.')</script>");
        }
    }
}