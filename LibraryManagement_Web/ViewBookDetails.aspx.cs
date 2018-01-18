using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class ViewBookDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Session["new"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select MemberID From StudentRegg Where MemberID='" + str + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "StudentRegg");
        DataRow dr = ds.Tables[0].Rows[0];
        string status = dr[0].ToString();
        TextBox1.Text = status;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}