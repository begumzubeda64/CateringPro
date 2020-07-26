using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Collections.Specialized;

public partial class orderadd : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    int id, id1,eid;
    int count_id, count_id1;
    String valid;
    protected void Page_Load(object sender, EventArgs e)
    {
       

        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            DateTime dt = DateTime.Now;
            int dateOnly = dt.Day;
            int mOnly = dt.Month;
            int yOnly = dt.Year;
            int dinm = DateTime.DaysInMonth(yOnly, mOnly);

            /*for (int i = 1; i <= 31; i++)
            {
                dd_day.Items.Add(i.ToString());
            }
            for (int i =1; i <= 12; i++)
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
        cmd = new SqlCommand("Select cid from customer_tbl", con);
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

        cmd1 = new SqlCommand("Select oid from order_tbl", con);
        try
        {
            con.Open();
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                id1 = int.Parse(dr[0].ToString());
            }


        }
        finally
        {
            con.Close();
        }

        count_id1 = id1 + 1;
        lbl_id.Text = count_id1.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("Select email from customer_tbl where email='" + tb_email.Text + "'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                valid = "Not valid";
            }
            else
            {
                valid = "Valid";
            }


        }
        finally
        {
            con.Close();
        }
        
        if (valid == "Valid" && Session["verify"] == "Verified")
        {
            if (dd_ye.SelectedValue != "Select Year" && dd_mo.SelectedValue != "" && dd_day.SelectedValue != "" && dd_day.SelectedValue != DateTime.Now.Day.ToString())
            {
                cmd1 = new SqlCommand("Insert into customer_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
                cmd1.Parameters.AddWithValue("p1", count_id);
                cmd1.Parameters.AddWithValue("p2", tb_name.Text);
                cmd1.Parameters.AddWithValue("p3", tb_addr.Text);
                cmd1.Parameters.AddWithValue("p4", tb_con.Text);
                cmd1.Parameters.AddWithValue("p5", tb_email.Text);
                cmd1.Parameters.AddWithValue("p6", Session["code"].ToString());
                cmd1.Parameters.AddWithValue("p7", "Not Login");


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



                if (dd_event.SelectedValue != "Select event")
                {
                    cmd = new SqlCommand("Select eid from event_tbl where oevent='" + dd_event.SelectedValue + "'", con);
                    try
                    {
                        con.Open();
                        dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            eid = int.Parse(dr[0].ToString());
                        }


                    }
                    finally
                    {
                        con.Close();
                    }
                    String dt = dd_day.SelectedValue + "/" + dd_mo.SelectedValue + "/" + dd_ye.SelectedValue;
                    cmd2 = new SqlCommand("Insert into order_tbl values(@p1,@p2,@p3,@p4,@p5,@p6,@p7)", con);
                    cmd2.Parameters.AddWithValue("p1", lbl_id.Text);
                    cmd2.Parameters.AddWithValue("p2", tbid.Text);
                    cmd2.Parameters.AddWithValue("p3", dd_event.SelectedValue);
                    cmd2.Parameters.AddWithValue("p4", DateTime.Now.Date);
                    cmd2.Parameters.AddWithValue("p5", dt);
                    cmd2.Parameters.AddWithValue("p6", "Confirmed");
                    cmd2.Parameters.AddWithValue("p7", eid);


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
                        Session["id"] = lbl_id.Text;
                        Session["cid"] = tbid.Text;
                        lbl_vevent.Text = "";


                        Response.Redirect("orderadd1.aspx");
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
        else
        {
            valid_email.Text = "<font color=red>E-mail id exists or code not verified.</font>";
            
        }
    }
    protected void tb_email_TextChanged(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("Select email from customer_tbl where email='" + tb_email.Text + "'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                valid = "Not valid";
            }
            else
            {
                valid = "Valid";
            }


        }
        finally
        {
            con.Close();
        }
        if (valid == "Valid")
        {
            valid_email.Text = "";
        }
        else
        {
            valid_email.Text = "E-mail id exists";

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

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            Random random = new Random();
            int value = random.Next(1001, 9999);
            mail.From = new MailAddress("bzubeda64@gmail.com");
            mail.To.Add(tb_email.Text);
            mail.Subject = "Catering";
            mail.Body = "Hi " + tb_email.Text + " Your verification code is:" + value;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("bzubeda64@gmail.com", "ZB_54dsena");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);

            lbl_verify.Text = "Your verififcation code is sent to your e-mail.";

            
           
            Session["code"] = value.ToString();
        }
        catch (Exception ex)
        {

        }
    }
    protected void tbpass_TextChanged(object sender, EventArgs e)
    {
        if (tbpass.Text == Session["code"].ToString())
        {

            Session["verify"] = "Verified";
            lbl_verify.Text = "<font color=green>Verified.</font>";
        }
        else
        {

            Session["verify"] = "Not Verified";
            lbl_verify.Text = "Invalid Code";
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
    protected void dd_mo_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dd_ye.SelectedValue != "Select Year")
        {
            DateTime dt = DateTime.Now;
            int dateOnly = dt.Day;
            int mOnly = dt.Month;
            int yOnly = dt.Year;
            int dinm = DateTime.DaysInMonth(yOnly, mOnly);
            if (dd_mo.SelectedValue == mOnly.ToString() && dd_ye.SelectedValue == yOnly.ToString())
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
}