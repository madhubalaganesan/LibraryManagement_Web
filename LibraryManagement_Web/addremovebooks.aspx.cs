using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class addremovebooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = Convert.ToInt32(TextBox5.Text.ToString());
        for (int i = 0; i < n; i++)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            string insCmd = "Insert into book(BookName,Author,Category,Publisher,Edition,status,Type) values(@BookName,@Author,@Category,@Publisher,@Edition,@status,@Type) ";
            SqlCommand insertUser = new SqlCommand(insCmd, con);
            insertUser.Parameters.AddWithValue("@BookName", TextBox1.Text);
            insertUser.Parameters.AddWithValue("@Author", TextBox2.Text);
            insertUser.Parameters.AddWithValue("@Category", DropDownList1.SelectedItem.ToString());
            insertUser.Parameters.AddWithValue("@Publisher", TextBox3.Text);
            insertUser.Parameters.AddWithValue("@Edition", TextBox4.Text);
            insertUser.Parameters.AddWithValue("@status", "Available");
            insertUser.Parameters.AddWithValue("@Type", DropDownList2.SelectedItem.ToString());


            try
            {
                insertUser.ExecuteNonQuery();
                con.Close();

                Label1.Visible = true;
                Label2.Visible = false;
                Button4.Visible = true;


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

    protected void Button2_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
           // string name;
            //name = TextBox1.Text;
            string delCmd = "DELETE from book WHERE ID='"+TextBox6.Text+"'";
                    SqlCommand deleteUser = new SqlCommand(delCmd, con);
                        
            try
            {
                deleteUser.ExecuteNonQuery();
                con.Close();

                Label1.Visible = false;
                Label2.Visible = true;
                Button4.Visible = true;
               
                              
            }
            catch (Exception ex)
            {
                Response.Write("Something Wrong <br/> Please Try Again");

            }
            finally
            {

            }
        }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Actions.aspx");
    }
}


    