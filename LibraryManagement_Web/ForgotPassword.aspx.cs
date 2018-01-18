using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();

        string cmdStr = "Select count(*) from StudentRegg where MemberID='" + TextBox1.Text + "'";
        SqlCommand CheckMID = new SqlCommand(cmdStr, con);
        int temp = Convert.ToInt32(CheckMID.ExecuteScalar().ToString());

        if (temp == 1)
        {
            SqlCommand cmd = new SqlCommand("Select Name From StudentRegg Where MemberID='" + TextBox1.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "StudentRegg");
            DataRow dr = ds.Tables[0].Rows[0];
            string Name = dr[0].ToString();

            if (Name == TextBox2.Text)
        {
                SqlCommand cmd1 = new SqlCommand("Select PhoneNo From StudentRegg Where MemberID='" + TextBox1.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "StudentRegg");
                DataRow dr1 = ds1.Tables[0].Rows[0];
                string PhoneNo = dr1[0].ToString();

                if (PhoneNo == TextBox3.Text)
                {
                    SqlCommand cmd2 = new SqlCommand("Select Password From StudentRegg Where MemberID='" + TextBox1.Text + "'", con);
                    SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                    DataSet ds2 = new DataSet();
                    da2.Fill(ds2, "StudentRegg");
                    DataRow dr2 = ds2.Tables[0].Rows[0];
                    string Password = dr2[0].ToString();

                    Label1.Text = Password;
                    Panel4.Visible = true;
                    con.Close();

                }

                else
                {
                    Panel4.Visible = false;
                    Label2.Visible = true;
                    Label3.Visible = false;
                    Label4.Visible = false;
                }
            }
            else
            {
                Panel4.Visible = false;
                Label3.Visible = true;
                Label2.Visible = false;
                Label4.Visible = false;
            }
        }
        else
        {
            Panel4.Visible = false;
            Label4.Visible = true;
            Label3.Visible = false;
            Label2.Visible = false;
        }                  
                       
      }
}