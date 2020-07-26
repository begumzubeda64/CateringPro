using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class menu : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        if (dd_cat.SelectedValue == "Select category")
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();
        }
        else if (dd_cat.SelectedValue == "All")
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource2;
            DataList1.DataBind();
        }
        else
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
        }
    }
}