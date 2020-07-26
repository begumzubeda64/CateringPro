using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ahome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2, cmd3, cmd4;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        cmd2 = new SqlCommand("Select * from order_tbl where odate=@p1", con);
        cmd2.Parameters.AddWithValue("p1", DateTime.Today.Date);
        try
        {
            int sum=0;
            con.Open();
            dr = cmd2.ExecuteReader();
            while (dr.Read())
            {
                sum = sum + 1;

            }
            Label1.Text = "Orders:" + (sum);



        }
        finally
        {
            con.Close();
        }
        cmd1 = new SqlCommand("Select * from query_tbl where qdate=@p1", con);
        cmd1.Parameters.AddWithValue("p1", DateTime.Today.ToString());
        try
        {
            int sum = 0;
            con.Open();
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                sum = sum + 1;
                
            }
            Label2.Text = "Queries:" + (sum);


        }
        finally
        {
            con.Close();
        }
        cmd = new SqlCommand("Select * from booking_tbl where bkdate=@p1", con);
        cmd.Parameters.AddWithValue("p1", DateTime.Today.ToString());
        try
        {
            int sum = 0;
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sum = sum + 1;

            }
            Label3.Text = "Bookings:" + (sum);


        }
        finally
        {
            con.Close();
        }

    }
   
}