using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class orderadd2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    int id, count_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            double total = 0;
            cmd = new SqlCommand("Select total from lineitem_tbl where oid='" + Session["id"].ToString() + "'", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    total = total + double.Parse(dr[0].ToString());
                }
                lbl_tot.Text = total.ToString();

            }
            finally
            {
                con.Close();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        cmd = new SqlCommand("Select billid from bill_tbl", con);
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

        if (lbl_left.Text == "0")
        {
            cmd1 = new SqlCommand("Insert into bill_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", con);
            cmd1.Parameters.AddWithValue("p1", count_id);
            cmd1.Parameters.AddWithValue("p2", Session["id"].ToString());
            cmd1.Parameters.AddWithValue("p3", tb_amt.Text);
            cmd1.Parameters.AddWithValue("p4", lbl_left.Text);
            cmd1.Parameters.AddWithValue("p5", "Paid");
            cmd1.Parameters.AddWithValue("p6", lbl_tot.Text);
            cmd1.Parameters.AddWithValue("p7", tb_tax.Text);
            cmd1.Parameters.AddWithValue("p8", DateTime.Now.ToString());


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
                lbl_out.Text = "Bill added";
            }
        }
        else
        {
            cmd1 = new SqlCommand("Insert into bill_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)", con);
            cmd1.Parameters.AddWithValue("p1", count_id);
            cmd1.Parameters.AddWithValue("p2", Session["id"].ToString());
            cmd1.Parameters.AddWithValue("p3", tb_amt.Text);
            cmd1.Parameters.AddWithValue("p4", lbl_left.Text);
            cmd1.Parameters.AddWithValue("p5", "Pending");
            cmd1.Parameters.AddWithValue("p6", lbl_tot.Text);
            cmd1.Parameters.AddWithValue("p7", tb_tax.Text);
            cmd1.Parameters.AddWithValue("p8", DateTime.Now.Date);


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
                lbl_out.Text = "Bill added";
            }
        }

    }



  
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tb_dis.Text == "")
        {
            double total = 0;
            cmd = new SqlCommand("Select total from lineitem_tbl where oid='" + Session["id"].ToString() + "'", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    total = total + double.Parse(dr[0].ToString());
                }
                double tax = total * double.Parse(tb_tax.Text);
                double t = total + tax;
                lbl_tot.Text = t.ToString();
                Session["total"] = t.ToString();

            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            double total = 0;
            cmd = new SqlCommand("Select total from lineitem_tbl where oid='" + Session["id"].ToString() + "'", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    total = total + double.Parse(dr[0].ToString());
                }

                double dis = double.Parse(tb_dis.Text) / 100;
                double d = total * dis;

                double t = total - d;
                double tax = t * double.Parse(tb_tax.Text);
                double tot = t = tax;
                lbl_tot.Text = tot.ToString();
                Session["total"] = tot.ToString();
            }
            finally
            {
                con.Close();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        double amt = double.Parse(lbl_tot.Text) - double.Parse(tb_amt.Text);

        if (amt<0)
        {
            lbl_left.Text = "";
            lbl_apa.Text = "Amount cannot be greater than total";
        }
        else
        {
            lbl_left.Text = amt.ToString();
            lbl_apa.Text = "";
        }
    }
}