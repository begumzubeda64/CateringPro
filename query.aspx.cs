using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class query : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    int id;
    int count_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
            cmd = new SqlCommand("Select qid from query_tbl", con);
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
            tbname.Text = Session["name"].ToString();
            tbdate.Text = DateTime.Now.ToString();
            tbname.Text = Session["name"].ToString();
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Insert into query_tbl values(@p1,@p2,@p3,@p4,@p5,@p6)", con);
        cmd.Parameters.AddWithValue("p1", tbid.Text);
        cmd.Parameters.AddWithValue("p2", Session["id"].ToString());
        cmd.Parameters.AddWithValue("p3", tbname.Text);
        cmd.Parameters.AddWithValue("p4",tbquery.Text);
        cmd.Parameters.AddWithValue("p5", DateTime.Now.ToString());
        cmd.Parameters.AddWithValue("p6", "Not Replied");
        int i;
        try
        {
            con.Open();
            i = cmd.ExecuteNonQuery();
        }
        finally
        {
            con.Close();
        }
        if (i > 0)
        {
            cmd1 = new SqlCommand("Select qid from query_tbl", con);
            try
            {
                con.Open();
                dr = cmd1.ExecuteReader();
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
            lbl_out.Text = "Query sent";
            tbquery.Text = "";
        }
    }
}