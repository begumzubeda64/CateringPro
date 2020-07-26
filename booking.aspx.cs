using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class booking : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    int id;
    int count_id;
    String cid;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {

            tbname.Text = Session["name"].ToString();
          
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
        
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            dd_ye.Items.Add("Select Year");
            DateTime dt = DateTime.Now;
            int dateOnly = dt.Day;
            int mOnly = dt.Month;
            int yOnly = dt.Year;
            int dinm = DateTime.DaysInMonth(yOnly, mOnly);

            /*for (int i = 1; i <= 31; i++)
            {
                dd_day.Items.Add(i.ToString());
            }
            for (int i = 1; i <= 12; i++)
            {
                dd_mo.Items.Add(i.ToString());
            }*/
            for (int i = yOnly; i <= (yOnly + 2); i++)
            {
                dd_ye.Items.Add(i.ToString());
            }
            cmd = new SqlCommand("Select oevent from event_tbl", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    dd_event.Items.Add(dr[0].ToString());
                }


            }
            finally
            {
                con.Close();
            }

        }
        cmd = new SqlCommand("Select bkid from booking_tbl", con);
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
        if (dd_ye.SelectedValue != "Select Year" && dd_mo.SelectedValue != "" && dd_day.SelectedValue != "" && dd_day.SelectedValue != DateTime.Now.Day.ToString())
        {
            if (dd_event.SelectedValue != "Select event")
            {
                String dt = dd_day.SelectedValue + "/" + dd_mo.SelectedValue + "/" + dd_ye.SelectedValue;
                cmd = new SqlCommand("Insert into booking_tbl values(@p1,@p2,@p3,@p4,@p5,@p6)", con);
                cmd.Parameters.AddWithValue("p1", tbid.Text);
                cmd.Parameters.AddWithValue("p2", Session["id"].ToString());
                cmd.Parameters.AddWithValue("p3", tbname.Text);
                cmd.Parameters.AddWithValue("p4", dd_event.SelectedValue);
                cmd.Parameters.AddWithValue("p5", dt);
                cmd.Parameters.AddWithValue("p6", "Pending");
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
                    cmd1 = new SqlCommand("Select bkid from booking_tbl", con);
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
                    lbl_out.Text = "Booking request sent";
                    dd_event.SelectedValue = "Select event";
                    
                    
                    lbl_date.Text = "";
                }
            }
            else
            {
                lbl_vevent.Text = "Select an event";
            }
        }
        else
        {
            
            lbl_date.Text = "Cannot Select this date";
        }
    }
    protected void dd_event_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_event.SelectedValue == "Select event")
        {
            lbl_vevent.Text = "Select an event";
        }
        else
        {
            lbl_vevent.Text = "";
        }
    }
    protected void dd_mo_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_ye.SelectedValue != "Select Year")
        {
            DateTime dt = DateTime.Now;
            int dateOnly = dt.Day;
            int mOnly = dt.Month;
            int yOnly = dt.Year;
            int dinm = DateTime.DaysInMonth(yOnly, mOnly);
            if (dd_mo.SelectedValue == mOnly.ToString() && dd_ye.SelectedValue==yOnly.ToString())
            {
                
                dd_day.Items.Clear();
                for (int i = dateOnly; i <= dinm; i++)
                {
                    dd_day.Items.Add(i.ToString());
                }
            }
            else
            {
               
                dd_day.Items.Clear();
                for (int i = 1; i <= DateTime.DaysInMonth(int.Parse(dd_ye.SelectedValue), int.Parse(dd_mo.SelectedValue)); i++)
                {
                    dd_day.Items.Add(i.ToString());
                }
            }
        }
        else
        {
            dd_mo.Items.Clear();
            dd_day.Items.Clear();
        }
       
    }




    protected void dd_ye_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_ye.SelectedValue != "Select Year")
        {
            DateTime dt = DateTime.Now;
            int dateOnly = dt.Day;
            int mOnly = dt.Month;
            int yOnly = dt.Year;
            int dinm = DateTime.DaysInMonth(yOnly, mOnly);
            if (dd_ye.SelectedValue == yOnly.ToString())
            {
                dd_mo.Items.Clear();
                dd_day.Items.Clear();
                for (int i = mOnly; i <= 12; i++)
                {
                    dd_mo.Items.Add(i.ToString());
                }
            }
            else
            {
                dd_mo.Items.Clear();
                dd_day.Items.Clear();
                for (int i = 1; i <= 12; i++)
                {
                    dd_mo.Items.Add(i.ToString());
                }
            }
        }
        else
        {
            dd_mo.Items.Clear();
            dd_day.Items.Clear();
        }
    }
}