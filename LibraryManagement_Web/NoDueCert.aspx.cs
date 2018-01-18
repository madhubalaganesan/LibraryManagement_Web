using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class NoDueCert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd4 = new SqlCommand("Select Count From StudentRegg Where MemberID='" + TextBox1.Text + "'", con);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd4);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "StudentRegg");
        DataRow dr2 = ds2.Tables[0].Rows[0];
        string C = dr2[0].ToString();
        int Count = Convert.ToInt32(C.ToString());

        if (Count == 0)
        {
            Label1.Visible = true;
            Label2.Visible = false;
        }

        else
        {
            Label2.Visible = true;
            Label1.Visible = false;
        }
    }
    
}