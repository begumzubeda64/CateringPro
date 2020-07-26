using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class clogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    String status;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
            Response.Redirect("csignup.aspx");
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select cname,cid,email,cpass from customer_tbl where email='" + tb_id.Text + "' and cpass='"+tb_pass.Text+"'", con);
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["name"] = dr[0].ToString();
                Session["id"] = dr[1].ToString();
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
            cmd1 = new SqlCommand("Update customer_tbl set status='"+status+"' where email='"+tb_id.Text+"'", con);
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
                Session["login"] = "Login";
                Response.Redirect("Home.aspx");
            }

        }
        else
        {
            lbl_out.Text = "Invalid email or password";
           
        }
       

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (tb_id.Text == "")
        {
            lbl_out.Text = "<font color=red>Please enter the email</font>";
        }
        else
        {
            Session["email"] = tb_id.Text;
            Response.Redirect("otpc.aspx");
        }
    }
}