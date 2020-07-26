using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class orderadd1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1,cmd2;
    SqlDataReader dr;
    int id;
    double dis, t, to;

    
    protected void Page_Load(object sender, EventArgs e)
    {
        
       
       
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        
        lbl_id.Text = Session["id"].ToString();
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        String p = searchgv.SelectedRow.Cells[5].Text;
        String d = searchgv.SelectedRow.Cells[6].Text;
        double price = double.Parse(p);
        dis = double.Parse(d);
        double discount = dis / 100;
        double discount1 = price * discount;
        t = price - discount1;
        int q = int.Parse(tb_quan.Text);
        to = t * q;
        String name = searchgv.SelectedRow.Cells[2].Text;

        tb_add.Text += "<table border=1><tr><td>Name</td><td>" + name + "</td></tr><tr><td>Price</td><td>" + p + "</td></tr><tr><td>Quantity</td><td>" + q + "</td></tr><tr><td>Discount</td><td>" + d + "</td></tr><tr><td>Total</td><td>" + to.ToString() + "</td></tr></table>";
       
        cmd2 = new SqlCommand("Insert into lineitem_tbl values(@p1,@p2,@p3,@p4,@p5,@p6)", con);
        cmd2.Parameters.AddWithValue("p1", lbl_id.Text);
        cmd2.Parameters.AddWithValue("p2", searchgv.SelectedRow.Cells[1].Text);
        cmd2.Parameters.AddWithValue("p3", name);
        cmd2.Parameters.AddWithValue("p4", price);
        cmd2.Parameters.AddWithValue("p5", q);
        cmd2.Parameters.AddWithValue("p6", to.ToString());


        int i1;

        try
        {
            con.Open();
            i1 = cmd2.ExecuteNonQuery();
        }

        finally
        {
            con.Close();
        }
        if (i1 > 0)
        {
           
            lbl_out.Text = "Item added";
           
           

        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("orderadd2.aspx");
    }
}