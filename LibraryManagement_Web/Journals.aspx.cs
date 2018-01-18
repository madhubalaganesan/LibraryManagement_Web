using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Journals : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        string insCmd = "Insert into Journal(Name,Date,Type,ISSN,Category) values(@Name,@Date,@Type,@ISSN,@Category) ";
        SqlCommand insertUser = new SqlCommand(insCmd, con);
        insertUser.Parameters.AddWithValue("@Name", TextBox1.Text);
        insertUser.Parameters.AddWithValue("@Date", TextBox2.Text);
        insertUser.Parameters.AddWithValue("@Type", DropDownList1.SelectedItem.ToString());
        insertUser.Parameters.AddWithValue("@ISSN", TextBox3.Text);
        insertUser.Parameters.AddWithValue("@Category", DropDownList2.SelectedItem.ToString());

        // insertUser.ExecuteNonQuery();
        con.Close();
           
        
        try
        {
            
            Label1.Visible = true;
            Button3.Visible = true;
           
        }
        catch (Exception ex)
        {
            Response.Write("Something Wrong <br/> Please Try Again");

        }
        finally
        {

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Actions.aspx");
    }
}