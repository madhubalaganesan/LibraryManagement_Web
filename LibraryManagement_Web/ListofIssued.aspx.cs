using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ListofIssued : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con1.Open();
        string cmdStr1 = "Select count(*) from book where status = '" +TextBox1.Text+"' ";
        SqlCommand iss = new SqlCommand(cmdStr1, con1);
        int totiss = Convert.ToInt32(iss.ExecuteScalar().ToString());
        con1.Close();
        Label1.Text = totiss.ToString();
        Panel1.Visible = true;
    }
}