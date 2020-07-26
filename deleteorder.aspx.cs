using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class deleteorder : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2,cmd3,cmd4;
    SqlDataReader dr;
    string d1;
    int i,i1,i2,i3,id,count_id;
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (Session["aid"] != null)
        {
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='alogin.aspx';</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("Select cancel_id from cancel_tbl where coid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                d1 = "Done";
            }
            else
            {
               d1 = "Not Done";
            }


        }
        finally
        {
            con.Close();
        }
        if (d1 == "Done")
        {
            cmd1 = new SqlCommand("Update cancel_tbl set status='Cancelled' where coid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i3 = cmd1.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
            if (i3 > 0)
            {
                lbl_out.Text = "Deleted";
            }
            cmd = new SqlCommand("Delete from bill_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i = cmd.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
           

            cmd2 = new SqlCommand("Delete from lineitem_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i1 = cmd2.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
           

            cmd3 = new SqlCommand("Delete from order_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i2 = cmd3.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
           
        }
        else
        {
            cmd4 = new SqlCommand("Select cancel_id from cancel_tbl", con);
            try
            {
                con.Open();
                dr = cmd4.ExecuteReader();
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

            cmd2 = new SqlCommand("Insert into cancel_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", con);
            cmd2.Parameters.AddWithValue("p1", count_id);
            cmd2.Parameters.AddWithValue("p2", GridView1.SelectedRow.Cells[1].Text);
            cmd2.Parameters.AddWithValue("p3", GridView1.SelectedRow.Cells[4].Text);
            cmd2.Parameters.AddWithValue("p4", GridView1.SelectedRow.Cells[5].Text);
            cmd2.Parameters.AddWithValue("p5", GridView1.SelectedRow.Cells[3].Text);
            cmd2.Parameters.AddWithValue("p6", DateTime.Now.Date);
            cmd2.Parameters.AddWithValue("p7", "Cancelled");
            cmd2.Parameters.AddWithValue("p8", GridView1.SelectedRow.Cells[2].Text);

            int i4;


            try
            {
                con.Open();
                i4 = cmd2.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
            if (i4 > 0)
            {
                lbl_out.Text = "Deleted";
            }
            cmd = new SqlCommand("Delete from bill_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i = cmd.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }


            cmd1 = new SqlCommand("Delete from lineitem_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i1 = cmd1.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }


            cmd3 = new SqlCommand("Delete from order_tbl where oid='" + GridView1.SelectedRow.Cells[1].Text + "'", con);


            try
            {
                con.Open();
                i2 = cmd3.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
        }
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}