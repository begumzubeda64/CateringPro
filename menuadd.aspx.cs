using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class menuadd : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    int id;
    int count_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aid"] != null)
        {
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='alogin.aspx';</script>");
        }
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        cmd = new SqlCommand("Select mid from menu_tbl", con);
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
        tb_id.Text = count_id.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tb_cat.SelectedValue != "Select category" && tb_unit.SelectedValue != "Select Unit")
        {
            lbl_cvalid.Text = "";
            lbl_uvalid.Text = "";

            if (tb_dis.Text == "")
            {
                cmd1 = new SqlCommand("Insert into menu_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
                cmd1.Parameters.AddWithValue("p1", count_id);
                cmd1.Parameters.AddWithValue("p2", tb_name.Text);
                cmd1.Parameters.AddWithValue("p3", tb_cat.SelectedValue);
                cmd1.Parameters.AddWithValue("p4", tb_unit.SelectedValue);
                cmd1.Parameters.AddWithValue("p5", tb_price.Text);
                cmd1.Parameters.AddWithValue("p6", 0);
                cmd1.Parameters.AddWithValue("p7", System.IO.Path.GetFileName(tb_img.PostedFile.FileName));

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
                    lbl_out.Text = "Registered successfullly";
                    cmd = new SqlCommand("Select mid from menu_tbl", con);
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
                    tb_id.Text = count_id.ToString();
                    tb_name.Text = "";
                    tb_cat.SelectedValue = "Select category";
                    tb_unit.SelectedValue = "Select Unit";
                    tb_price.Text = "";
                    tb_dis.Text = "";
                    lbl_cvalid.Text = "";
                    lbl_uvalid.Text = "";

                }
            }
            else
            {
                cmd1 = new SqlCommand("Insert into menu_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
                cmd1.Parameters.AddWithValue("p1", count_id);
                cmd1.Parameters.AddWithValue("p2", tb_name.Text);
                cmd1.Parameters.AddWithValue("p3", tb_cat.SelectedValue);
                cmd1.Parameters.AddWithValue("p4", tb_unit.SelectedValue);
                cmd1.Parameters.AddWithValue("p5", tb_price.Text);
                cmd1.Parameters.AddWithValue("p6", tb_dis.Text);
                cmd1.Parameters.AddWithValue("p7", System.IO.Path.GetFileName(tb_img.PostedFile.FileName));

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
                    lbl_out.Text = "Registered successfullly";
                    cmd = new SqlCommand("Select mid from menu_tbl", con);
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
                    tb_id.Text = count_id.ToString();
                    tb_name.Text = "";
                    tb_cat.SelectedValue = "Select category";
                    tb_unit.SelectedValue = "Select Unit";
                    tb_price.Text = "";
                    tb_dis.Text = "";
                    lbl_cvalid.Text = "";
                    lbl_uvalid.Text = "";
                }
            }
           
        }
        else if (tb_cat.SelectedValue == "Select category")
        {
            lbl_cvalid.Text = "Please select the category";
        }
        else 
        {
            lbl_uvalid.Text = "Please select the unit";
        }
    }
    protected void tb_cat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (tb_cat.SelectedValue == "Select category")
        {
            lbl_cvalid.Text = "Please select the category";
        }
        else
        {
            lbl_cvalid.Text = "";
        }
    }
    protected void tb_unit_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (tb_unit.SelectedValue == "Select Unit")
        {
            lbl_uvalid.Text = "Please select the unit";
        }
        else
        {
            lbl_uvalid.Text = "";
        }
    }
}