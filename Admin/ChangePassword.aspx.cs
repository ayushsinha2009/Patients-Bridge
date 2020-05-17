using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        CryptoGraphy cg = new CryptoGraphy();
        string oldpass = OldPass.Text;
        string newpass = NewPass.Text;
        string renewpass = ReNewPass.Text;

        oldpass = cg.MD5Hash(oldpass);
        newpass = cg.MD5Hash(newpass);
        renewpass = cg.MD5Hash(renewpass);

        string email = Session["AdminEmail"].ToString();
        DataBaseManager dbm = new DataBaseManager();
        string sql1 = "select * from Admin where Email='" + email + "'";
        DataTable dt = new DataTable();
        dt = dbm.ExecuteSelect(sql1);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["Password"].ToString() == oldpass)
            {
                if (newpass == renewpass)
                {
                    string sql2 = "update Admin set Password='" + newpass + "' where Email='" + email + "'";
                    if (dbm.ExecuteIUD(sql2))
                    {
                        Response.Write("<script>alert('Password Changed Successfully.')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('New Password Not Matched.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Old Password Not Matched.')</script>");
            }
        }
        else
        {
            Response.Redirect("../Login.aspx");
        }

    }
}