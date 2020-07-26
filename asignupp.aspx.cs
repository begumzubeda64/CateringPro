using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class asignupp : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    int id;
    int count_id;
    String b;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            cmd1 = new SqlCommand("Select branch from branch_tbl", con);
            try
            {
                con.Open();
                dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    tb_branch.Items.Add(dr[0].ToString());
                }
               


            }
            finally
            {
                con.Close();
            }
        }

        cmd = new SqlCommand("Select aid from admin_tbl", con);
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
        if (tb_branch.SelectedValue != "Select branch")
        {
            valid_branch.Text = "";
            cmd = new SqlCommand("Select bid from branch_tbl where branch='"+tb_branch.SelectedValue+"'", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    b = dr[0].ToString();
                }


            }
            finally
            {
                con.Close();
            }

            cmd1 = new SqlCommand("Insert into admin_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", con);
            cmd1.Parameters.AddWithValue("p1", count_id);
            cmd1.Parameters.AddWithValue("p2", tbpass.Text);
            cmd1.Parameters.AddWithValue("p3", tbname.Text);
            cmd1.Parameters.AddWithValue("p4", tbadd.Text);
            cmd1.Parameters.AddWithValue("p5", tbcon.Text);
            cmd1.Parameters.AddWithValue("p6", tb_branch.SelectedValue.ToString());
            cmd1.Parameters.AddWithValue("p7", "Not Login");
            cmd1.Parameters.AddWithValue("p8", b);

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

                cmd = new SqlCommand("Select aid from admin_tbl", con);
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
                tb_branch.SelectedValue = "Select branch";
                valid_branch.Text = "";
            }
        }
        else
        {
            valid_branch.Text = "<font color=red>Please Select branch</font>";
        }
    }
    protected void tb_branch_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (tb_branch.SelectedValue != "Select branch")
        {
            valid_branch.Text = "";
        }
       
        else
        {
            valid_branch.Text = "<font color=red>Please Select branch</font>";
        }
    }
}