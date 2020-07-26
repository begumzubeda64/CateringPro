using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cancel : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    int id,count_id;
    String cid;
    
    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["id"] != null)
        {
          
            

        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            Panel1.Visible = false;
        }
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Select cancel_id from cancel_tbl", con);
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

        cmd1 = new SqlCommand("Insert into cancel_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", con);
        cmd1.Parameters.AddWithValue("p1", count_id);
        cmd1.Parameters.AddWithValue("p2", lbl_id.Text);
        cmd1.Parameters.AddWithValue("p3", lbl_date.Text);
        cmd1.Parameters.AddWithValue("p4",lbl_ddate.Text);
        cmd1.Parameters.AddWithValue("p5", lbl_event.Text);
        cmd1.Parameters.AddWithValue("p6", DateTime.Now.Date);
        cmd1.Parameters.AddWithValue("p7", "Not Confirmed");
        cmd1.Parameters.AddWithValue("p8", Session["id"].ToString());

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
            lbl_out.Text = "Cancellation request sent";
        }

        
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        cmd = new SqlCommand("Select oid,odate,oddate,oevent from order_tbl where oid='" + GridView2.SelectedRow.Cells[1].Text + "'", con);

        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_id.Text = dr[0].ToString();
                lbl_date.Text = dr[1].ToString();
                lbl_ddate.Text = dr[2].ToString();
                lbl_event.Text = dr[3].ToString();

            }

        }
        finally
        {
            con.Close();
        }

        cmd1 = new SqlCommand("Select tax,total,ampaid,amunpaid from bill_tbl where oid='" + GridView2.SelectedRow.Cells[1].Text + "'", con);

        try
        {
            con.Open();
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                lbl_tax.Text = dr[0].ToString();
                lbl_total.Text = dr[1].ToString();
                lbl_ampaid.Text = dr[2].ToString();
                lbl_amunpaid.Text = dr[3].ToString();

            }

        }
        finally
        {
            con.Close();

        }
    }
}