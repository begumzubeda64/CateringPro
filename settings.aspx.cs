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

public partial class settings : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dr;
    int id;
    int count_id;
    String valid;
    String cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (Session["id"] != null)
        {
            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                cmd = new SqlCommand("Select cid,cname,cadd,contact,email from customer_tbl where cid='" + Session["id"].ToString() + "'", con);
                try
                {
                    con.Open();
                    dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        tbid.Text = dr[0].ToString();
                        tbname.Text = dr[1].ToString();
                        tbadd.Text = dr[2].ToString();
                        tbcon.Text = dr[3].ToString();
                        tb_email.Text = dr[4].ToString();


                    }


                }
                finally
                {
                    con.Close();
                }
            }
            cid = Session["id"].ToString();
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
        
       
        
    }
   
    protected void Button3_Click(object sender, EventArgs e)
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

            lbl_code.Text = "Your verififcation code is sent to your e-mail.";



            Session["code"] = value.ToString();
        }
        catch (Exception ex)
        {

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
    protected void tb_code_TextChanged(object sender, EventArgs e)
    {
        
        if (tb_code.Text == Session["code"].ToString())
        {

            Session["verify"] = "Verified";
            lbl_code.Text = "<font color=green>Verified.</font>";
        }
        else
        {

            Session["verify"] = "Not Verified";
            lbl_code.Text = "Invalid Code";
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
            if (tbpass.Text == "")
            {
                cmd1 = new SqlCommand("Update customer_tbl set cname='" + tbname.Text + "',cadd='" + tbadd.Text + "',contact='" + tbcon.Text + "',email='" + tb_email.Text + "' where cid='" + cid + "'", con);
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
                    lbl_out.Text = "Saved";
                }
            }
            else
            {
                cmd1 = new SqlCommand("Update customer_tbl set cname='" + tbname.Text + "',cadd='" + tbadd.Text + "',contact='" + tbcon.Text + "',email='" + tb_email.Text + "',cpass='" + tbpass.Text + "' where cid='" + cid + "'", con);
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
                    lbl_out.Text = "Saved";
                }
           }
        
       
          

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}