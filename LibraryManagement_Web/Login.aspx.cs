using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("Actions.aspx");
        }
        else
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            string cmdStr = "Select count(*) from StudentRegg where MemberID='" + TextBox1.Text + "'";
            SqlCommand Checkuser = new SqlCommand(cmdStr, con);
            int temp = Convert.ToInt32(Checkuser.ExecuteScalar().ToString());
            if (temp == 1)
            {
                string cmdStr2 = "Select Password from StudentRegg where MemberID='" + TextBox1.Text + "'";
                SqlCommand pass = new SqlCommand(cmdStr2, con);
                string password = pass.ExecuteScalar().ToString();
                con.Close();
                if (password == TextBox2.Text)
                {
                    Session["new"] = TextBox1.Text;
                    Response.Redirect("useraction.aspx");

                   
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid Password";
                }
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid MemberID";
            }
        }

    }
    }
