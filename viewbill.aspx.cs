using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class viewbill : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    
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
         con= new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
         if (!Page.IsPostBack)
         {
             Panel1.Visible = false;
         }
           
       
    }





    protected void Button1_Click(object sender, EventArgs e)
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

        cmd1 = new SqlCommand("Select tax,total,ampaid,amunpaid,billid,bdate from bill_tbl where oid='" + GridView2.SelectedRow.Cells[1].Text + "'", con);

        try
        {
            con.Open();
            dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                lbl_tax.Text = dr[0].ToString();
                lbl_total.Text = dr[1].ToString();
                lbl_paid.Text = dr[2].ToString();
                lbl_unpaid.Text = dr[3].ToString();
                lbl_bid.Text = dr[4].ToString();
                lbl_bdate.Text = dr[5].ToString();

            }

        }
        finally
        {
            con.Close();

        }
    }
}