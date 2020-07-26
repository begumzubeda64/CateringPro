using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class addevent : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd, cmd1;
    SqlDataReader dr;
    int id;
    int count_id;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection("Data Source=desktop-v98ifsl;Initial Catalog=project;Integrated Security=True");
        cmd = new SqlCommand("Select eid from event_tbl", con);
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
        cmd1 = new SqlCommand("Insert into event_tbl values(@p1,@p2)", con);
        cmd1.Parameters.AddWithValue("p1", count_id);
        cmd1.Parameters.AddWithValue("p2", tb_event.Text);


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
            lbl_out.Text = "Registered successfully..";

            cmd = new SqlCommand("Select eid from event_tbl", con);
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
            tb_event.Text = "";

        }
    }
}