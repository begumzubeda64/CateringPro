using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Collections.Specialized;
using System.Data.SqlClient;

public partial class otpc : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2, cmd3, cmd4;
    SqlDataReader dr;
    String cont;
    int i3;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (!Page.IsPostBack)
        {
            Panel1.Visible = false;
        }
        cmd2 = new SqlCommand("Select contact from customer_tbl where email='" + Session["email"].ToString() + "'", con);
        try
        {
            con.Open();
            dr = cmd2.ExecuteReader();
            if (dr.Read())
            {
                cont = dr[0].ToString();
            }
            else
            {
                lbl_out.Text = "<font color=red>E-mail doesn't exists</font>";
            }

        }
        finally
        {
            con.Close();
        }

        lbl_con.Text = cont;
        lbl_email.Text = Session["email"].ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "MOBILE")
        {
            

            cmd2 = new SqlCommand("Select contact from customer_tbl where email='" +Session["email"].ToString() + "'", con);
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                if (dr.Read())
                {
                    cont = dr[0].ToString();
                    Random random = new Random();
                    int value = random.Next(1001, 9999);
                    string destinationaddr = "91" + cont;
                    string message = "Your OTP Number is " + value + " ( Sent By : Apna Punjab Catering )";
                    
                    String message1 = HttpUtility.UrlEncode(message);

                    using (var wb = new WebClient())
                    {
                        byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                            {
                            {"apikey" , "I2IIxTvnQko-pYZsFjgdWJCDvE1qnJ8wpAsBQaAqd7"},
                            {"numbers" , destinationaddr},
                            {"message" , message1},
                            {"sender" , "TXTLCL"}
                            });
                        string result = System.Text.Encoding.UTF8.GetString(response);
                        Session["code"] = value;
                    }
            
                }
                else
                {
                    lbl_out.Text = "<font color=red>E-mail doesn't exists</font>";
                }


            }
            finally
            {
                con.Close();
            }
           
            

        }
        else if (RadioButtonList1.SelectedValue == "E-MAIL")
        {
            try
            {
                lbl_out.Text = "";
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                Random random = new Random();
                int value = random.Next(1001, 9999);
                mail.From = new MailAddress("bzubeda64@gmail.com");
                mail.To.Add(Session["email"].ToString());
                mail.Subject = "Catering";
                mail.Body = "Hi " + Session["email"].ToString() + " Your verification code is:" + value;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("bzubeda64@gmail.com", "ZB_54dsena");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

                lbl_verify.Text = "<font color=red>Your verififcation code is sent to your e-mail.</font>";



                Session["code"] = value.ToString();
            }
            catch (Exception ex)
            {

            }
        }
        else
        {
            lbl_out.Text = "<font color=red>Please select a mode of sending otp..</font>";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void tb_otp_TextChanged(object sender, EventArgs e)
    {
        if (tb_otp.Text == Session["code"].ToString())
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["verify"].ToString() == "Verified")
        {
            cmd1 = new SqlCommand("Update customer_tbl set cpass='" + tb_pass.Text + "' where email='" + lbl_email.Text + "'", con);


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
                lbl_out.Text = "Saved";
            }
        }
        else
        {
            lbl_out.Text = "<font color=red>Can't save</font>";
        }

    }
   
}