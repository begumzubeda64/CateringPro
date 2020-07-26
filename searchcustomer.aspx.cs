using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchcustomer : System.Web.UI.Page
{
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
        if (tb_search.Text == "")
        {
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource3;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSourceID = null;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}