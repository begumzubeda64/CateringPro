using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class alogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    String status;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select aid,apass from admin_tbl where aid='" + tb_id.Text + "' and apass='" + tb_pass.Text + "'", con);
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["aid"] = dr[0].ToString();
                status = "Login";
            }
            else
            {
                status = "Not Login";
            }


        }
        finally
        {
            con.Close();
        }
        if (status == "Login")
        {
            cmd1 = new SqlCommand("Update admin_tbl set status='" + status + "' where aid='" + tb_id.Text + "'", con);
            int i;

            try
            {
                con.Open();
                i = cmd1.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
            if (i > 0)
            {
                Response.Redirect("ahome.aspx");
            }

        }
        else
        {
            lbl_out.Text = "Invalid email or password";

        }
    }
}