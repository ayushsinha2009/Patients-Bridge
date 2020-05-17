using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataBaseManager
/// </summary>
public class DataBaseManager
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DASConnection"].ToString());
    public bool ExecuteIUD(string Query)
    {
        SqlCommand cmd = new SqlCommand(Query, con);
        int x = 0;
        try
        {
            con.Open();
            x = cmd.ExecuteNonQuery();
        }
        catch(Exception e)
        {
            x = 0;
        }
        finally
        {
            con.Close();
        }
        if(x>0)
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public DataTable ExecuteSelect(string Query)
    {
        SqlDataAdapter sda = new SqlDataAdapter(Query, con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        return dt;
    }

}