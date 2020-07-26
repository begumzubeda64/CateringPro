using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class viewresponse : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd1,cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {

            con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");

            lbl_out.Text += "<br/><br/><center>QUERIES<br/><br/><table border=1 style={border-radius:7px;width:90%;}><tr><td><table>";
            cmd = new SqlCommand("Select query from query_tbl where cid=" + int.Parse(Session["id"].ToString()), con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lbl_out.Text += "<tr><td>QUERY&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + dr[0].ToString() + "</td></tr>";
                }
                lbl_out.Text += "</table></td></tr></table></center><br/><br/><br/>";


            }
            finally
            {
                con.Close();
            }

            cmd1 = new SqlCommand("Select query,response from response_tbl where cid=" + int.Parse(Session["id"].ToString()), con);
            try
            {
                lbl_out.Text += "<br/><center>RESPONSED QUERIES<br/><br/><table border=1 style={border-radius:7px;width:90%;}><tr><td><table>";
                con.Open();
                dr = cmd1.ExecuteReader();
                while (dr.Read())
                {
                    lbl_out.Text += "<tr><td>QUERY&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + dr[0].ToString() + "</td></tr><tr><td>REPLY&nbsp;&nbsp;&nbsp;&nbsp;</td><td>" + dr[1].ToString() + "</td></tr>";
                }
                lbl_out.Text += "</table></td></tr></table></center><br/><br/><br/>";


            }
            finally
            {
                con.Close();
            }

        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
    }

}