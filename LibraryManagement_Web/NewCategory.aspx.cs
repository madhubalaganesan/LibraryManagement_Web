using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class NewCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        string insCmd = "Insert into BookCategory(Category) values(@Category) ";
        SqlCommand insertUser = new SqlCommand(insCmd, con);
        insertUser.Parameters.AddWithValue("@Category", TextBox1.Text);
        
        try
        {
            insertUser.ExecuteNonQuery();
            con.Close();

            Label1.Visible = true;
            

        }
        catch (Exception ex)
        {
            Response.Write("Something Wrong <br/> Please Try Again");

        }
        finally
        {

        }
    }
}