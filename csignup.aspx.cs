using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class csignup : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1,cmd2;
    SqlDataReader dr;
    int id;
    int count_id;
    String valid;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        cmd = new SqlCommand("Select cid from customer_tbl", con);
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                id = int.Parse(dr[0].ToString());
            }


        }
        finally
        {
            con.Close();
        }

        count_id = id + 1;
        tbid.Text = count_id.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("Select email from customer_tbl where email='"+tb_email.Text+"'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                valid="Not valid";
            }
            else
            {
                valid = "Valid";
            }


        }
        finally
        {
            con.Close();
        }
        if (valid == "Valid")
        {
            cmd1 = new SqlCommand("Insert into customer_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
            cmd1.Parameters.AddWithValue("p1", count_id);
            cmd1.Parameters.AddWithValue("p2", tbname.Text);
            cmd1.Parameters.AddWithValue("p3", tbadd.Text);
            cmd1.Parameters.AddWithValue("p4", tbcon.Text);
            cmd1.Parameters.AddWithValue("p5", tb_email.Text);
            cmd1.Parameters.AddWithValue("p6", tbpass.Text);
            cmd1.Parameters.AddWithValue("p7", "Not Login");


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
                lbl_out.Text = "Registered successfully..";

                cmd = new SqlCommand("Select cid from customer_tbl", con);
                try
                {
                    con.Open();
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        id = int.Parse(dr[0].ToString());
                    }


                }
                finally
                {
                    con.Close();
                }

                count_id = id + 1;
                tbid.Text = count_id.ToString();
                tbname.Text = "";
                tbpass.Text = "";
                tbcon.Text = "";
                tbadd.Text = "";
                tb_email.Text = "";
                valid_email.Text = "";
            }

        }
        else
        {
            lbl_out.Text = "<font color=red>E-mail id exists</font>";
        }
    }
    protected void tb_email_TextChanged(object sender, EventArgs e)
    {

        cmd2 = new SqlCommand("Select email from customer_tbl where email='" + tb_email.Text + "'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                valid = "Not valid";
            }
            else
            {
                valid = "Valid";
            }


        }
        finally
        {
            con.Close();
        }
        if (valid == "Valid")
        {
            valid_email.Text = "";
        }
        else
        {
            valid_email.Text = "E-mail id exists";

        }
    }
}