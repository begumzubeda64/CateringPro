using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cviewbookingaspx : System.Web.UI.Page
{
    String cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            cid = Session["id"].ToString();
        }
        else 
        {
            Response.Write("<script>alert('You need to first Login!!')</script>");
            Response.Write("<script>window.location='clogin.aspx';</script>");
        }
    }
}