using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reportbill : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1, cmd2, cmd3;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        if (Session["aid"] != null)
        {
        }
        else
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='alogin.aspx';</script>");
        }
        if (!Page.IsPostBack)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            dd_s.Items.Add("Select Month");
            dd_s.Items.Add("January");
            dd_s.Items.Add("February");
            dd_s.Items.Add("March");
            dd_s.Items.Add("April");
            dd_s.Items.Add("May");
            dd_s.Items.Add("June");
            dd_s.Items.Add("July");
            dd_s.Items.Add("August");
            dd_s.Items.Add("September");
            dd_s.Items.Add("October");
            dd_s.Items.Add("November");
            dd_s.Items.Add("December");
            dd_s1.Items.Add("Select year");
            cmd = new SqlCommand("Select distinct YEAR(bdate) from bill_tbl", con);
            try
            {
                con.Open();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    dd_s1.Items.Add(dr[0].ToString());
                }



            }
            finally
            {
                con.Close();
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
        cmd = new SqlCommand("Select * from bill_tbl where bdate=@p1", con);
        cmd.Parameters.AddWithValue("p1", DateTime.Today.Date);
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(cmd);
        da.Fill(ds, "order");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        double sum = 0;
        try
        {
            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                sum = sum + double.Parse(dr[5].ToString());
            }



        }
        finally
        {
            con.Close();
        }
        lbl_count.Text = "Total payment: " + sum;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = false;
        cmd1 = new SqlCommand("Select * from bill_tbl where bdate>=dateadd(day, 1-datepart(dw, getdate()), CONVERT(date,getdate())) AND bdate <  dateadd(day, 8-datepart(dw, getdate()), CONVERT(date,getdate()))", con);

        SqlDataAdapter da;
        DataSet ds = new DataSet();
        da = new SqlDataAdapter(cmd1);
        da.Fill(ds, "order");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        double sum = 0;
        try
        {
            con.Open();
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                sum = sum + double.Parse(dr[5].ToString());
            }



        }
        finally
        {
            con.Close();
        }
        lbl_count.Text = "Total payment: " + sum;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel1.Visible = true;
        GridView1.Visible = false;
        lbl_count.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        lbl_count.Text = "";
        GridView1.Visible = false;
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
    protected void dd_s1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_count.Text = "";
        GridView1.Visible = true;
        Panel1.Visible = false;
        Panel2.Visible = true;
        if (dd_s1.SelectedValue != "Select year")
        {
            cmd3 = new SqlCommand("Select * from bill_tbl where YEAR(bdate)=@p1", con);
            cmd3.Parameters.AddWithValue("p1", dd_s1.SelectedValue);
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd3);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd3.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else
        {
            GridView1.Visible = false;
            lbl_count.Text = "";
        }
    }
    protected void dd_s_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        Panel2.Visible = false;
        if (dd_s.SelectedValue == "January")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/01/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "February")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/02/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            lbl_count.Text = "Total No.of Orders: " + GridView1.Rows.Count.ToString();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "March")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/03/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "April")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/04/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "May")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/05/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "June")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/06/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "July")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/07/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "August")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/08/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "September")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/09/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "October")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/10/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "November")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/11/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else if (dd_s.SelectedValue == "December")
        {
            cmd2 = new SqlCommand("Select * from bill_tbl where MONTH(bdate)=MONTH('2018/12/01')", con);

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd2);
            da.Fill(ds, "order");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            double sum = 0;
            try
            {
                con.Open();
                dr = cmd2.ExecuteReader();
                while (dr.Read())
                {
                    sum = sum + double.Parse(dr[5].ToString());
                }



            }
            finally
            {
                con.Close();
            }
            lbl_count.Text = "Total payment: " + sum;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
}