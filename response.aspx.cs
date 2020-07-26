using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class response : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1,cmd2;
    SqlDataReader dr;
    int id;
    int count_id;
    string branch,bid;
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
        cmd = new SqlCommand("Select rid from response_tbl", con);
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

        string qid = querygv.SelectedRow.Cells[1].Text;
        string query = querygv.SelectedRow.Cells[4].Text;
        int cid = int.Parse(querygv.SelectedRow.Cells[2].Text);

        cmd1 = new SqlCommand("Select branch,bid from admin_tbl where aid="+int.Parse(Session["aid"].ToString()), con);
        try
        {
            con.Open();
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                branch = dr[0].ToString();
                bid = dr[1].ToString();
            }


        }
        finally
        {
            con.Close();
        }


        cmd2 = new SqlCommand("Insert into response_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)", con);
        cmd2.Parameters.AddWithValue("p1", count_id);
        cmd2.Parameters.AddWithValue("p2", qid);
        cmd2.Parameters.AddWithValue("p3", Session["aid"].ToString());
        cmd2.Parameters.AddWithValue("p4",tb_reply.Text);
        cmd2.Parameters.AddWithValue("p5", DateTime.Now.ToString());
        cmd2.Parameters.AddWithValue("p6",branch);
        cmd2.Parameters.AddWithValue("p7", query);
        cmd2.Parameters.AddWithValue("p8", cid);
        cmd2.Parameters.AddWithValue("p9", bid);
        int i;
        try
        {
            con.Open();
            i = cmd2.ExecuteNonQuery();
        }
        finally
        {
            con.Close();
        }
        if (i > 0)
        {
            
           
            lbl_out.Text = "Response sent";
            tb_reply.Text = "";
            cmd1 = new SqlCommand("Update query_tbl set status='Replied' where qid=" + int.Parse(qid) , con);
            int i1;

            try
            {
                con.Open();
                i1 = cmd1.ExecuteNonQuery();
            }

            finally
            {
                con.Close();
            }
          
        }

    }
}