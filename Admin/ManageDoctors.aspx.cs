using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_ManageDoctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadddr_Click(object sender, EventArgs e)
    {
        DataBaseManager dbm = new DataBaseManager();
        string sql = "insert into Doctors(Name,Experience,Fee,Specialization,Photo) values('" + txtdrname.Text + "','" + txtdrexp.Text + "','" + txtdrfee.Text + "','" + txtdrsp.Text + "','" + uploaddrpic.FileName + "')";
        if(uploaddrpic.HasFile)
        {
            int photosize = uploaddrpic.PostedFile.ContentLength / 1024;
            if(photosize>=10 && photosize<=1024)
            {
                string ext = System.IO.Path.GetExtension(uploaddrpic.FileName);
                ext=ext.ToLower();
                if(ext==".jpg" || ext==".png" || ext==".jpeg" )
                {
                    if(dbm.ExecuteIUD(sql))
                    {
                        uploaddrpic.SaveAs(Server.MapPath("~/Admin/DrPhoto/" + uploaddrpic.FileName));
                        Response.Write("<script>alert('Doctor Added Successfully.'); window.location.href='ManageDoctors.aspx'; </script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something went wrong.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Upload only JPG, PNG or JPEG file.')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Please upload photo less then 1 MB')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Please upload doctor photo.')</script>");
        }
    }
}