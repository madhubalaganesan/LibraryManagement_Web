using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con1.Open();
        string cmdStr1 = "Select count(*) from book";
        SqlCommand noofbooks = new SqlCommand(cmdStr1, con1);
        int totbooks = Convert.ToInt32(noofbooks.ExecuteScalar().ToString());
        string cmdStr2 = "Select count(*) from Journal";
        SqlCommand noofjournals = new SqlCommand(cmdStr2, con1);
        int totjournals = Convert.ToInt32(noofjournals.ExecuteScalar().ToString());
        string cmdStr3 = "Select count(*) from Magazine";
        SqlCommand noofmagz = new SqlCommand(cmdStr3, con1);
        int totmagz = Convert.ToInt32(noofmagz.ExecuteScalar().ToString());
        con1.Close();
        Label5.Text = totbooks.ToString();
        Panel1.Visible = true;
        Label6.Text = totjournals.ToString();
        Panel2.Visible = true;
        Label7.Text = totmagz.ToString();
        Panel3.Visible = true;
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Actions.aspx");
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}