using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class updateform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {        
        Panel5.Visible = false;
        Panel7.Visible = false;
        Panel8.Visible = false;
        Panel9.Visible = false;
        Panel13.Visible = false;
        Panel11.Visible = false;
        Panel12.Visible = false;
        Panel15.Visible = false;
        string str = Session["new"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select MemberID From StudentRegg Where MemberID='" + str + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "StudentRegg");
        DataRow dr = ds.Tables[0].Rows[0];
        string status = dr[0].ToString();
        TextBox11.Text = status;
    
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string select = DropDownList1.SelectedItem.ToString();
        string a = select;
        
        if (a == "Name")
        {
            Panel5.Visible = true;
        }
        if (a == "Year")
        {
            Panel12.Visible = true;
        }
        if (a == "EmailID")
        {
            Panel15.Visible = true;
        }
        
        if (a == "Category")
        {
            Panel7.Visible = true;
        }
        if (a == "Course")
        {
            Panel8.Visible = true;
        }
        if (a == "Department")
        {
            Panel9.Visible = true;
        }
       if (a == "PhoneNo")
        {
            Panel13.Visible = true;
        } 
        if (a == "Password")
        {
            Panel11.Visible = true;
        }
               
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

       
    }
   
    protected void Button13_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Year= '" + DropDownList5.SelectedItem.ToString()+ "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }
  
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Name= '" + TextBox13.Text + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }
   
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Category= '" + DropDownList2.SelectedItem.ToString() + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Course= '" + DropDownList3.SelectedItem.ToString()+ "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Department= '" + DropDownList4.SelectedItem.ToString() + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }
   /* protected void Button10_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set PhoneNo= '" + TextBox18.Text + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("userupdated.aspx");
    } */
    protected void Button11_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set Password= '" + TextBox19.Text + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }


    protected void Button14_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set PhoneNo= '" + TextBox21.Text + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update StudentRegg set EmailID= '" + TextBox22.Text + "' where MemberID='" + Convert.ToInt32(TextBox11.Text).ToString() + "'", con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Panel14.Visible = true;
    }

    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("useraction.aspx");

    }
}
