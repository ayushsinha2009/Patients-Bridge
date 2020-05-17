using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubs_Click(object sender, EventArgs e)
    {
        string sql1 = "insert into NewsLetter(Email) values('" + txtsubscribe.Text + "')";
        DataBaseManager dbm = new DataBaseManager();
        if(dbm.ExecuteIUD(sql1))
        {
            Response.Write("<script>alert('Subscribed Successfully'); window.location.href='Default.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('Something went wrong, please try again letter.')</script>");
        }

    }
}
