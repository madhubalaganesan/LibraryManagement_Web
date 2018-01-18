using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class DailyReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime no = System.DateTime.Now;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        string insCmd = "Insert into DateFine(MID,Fine,Date)values(@MID,@Fine,@Date) ";
        SqlCommand insertUser = new SqlCommand(insCmd, con);
        insertUser.Parameters.AddWithValue("@MID", "0");
        insertUser.Parameters.AddWithValue("@Fine", "0");
        insertUser.Parameters.AddWithValue("@Date", no);
        insertUser.ExecuteNonQuery();
        
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        con.Open();
        double tf = 0;
        string cmdstr = "Select count(*) from DateFine";
        SqlCommand tot = new SqlCommand(cmdstr, con);
        int n = Convert.ToInt32(tot.ExecuteScalar().ToString());
        DateTime date = Convert.ToDateTime(TextBox1.Text);
        Session["Date"] = date;

        string cmdStr1 = "Select count(*) from DateFine where date='" + date + "'";
        SqlCommand userExist1 = new SqlCommand(cmdStr1, con);
        double temp = Convert.ToInt32(userExist1.ExecuteScalar().ToString());
        //Response.Write(temp);
        string cmdStr2 = "Select count(*) from book where Issuedate='" + date + "'";
        SqlCommand userExist2 = new SqlCommand(cmdStr2, con);
        int temp1 = Convert.ToInt32(userExist2.ExecuteScalar().ToString());
        //Response.Write(temp1);
        string cmdStr3= "Select count(*) from book where Returndate='" + date + "'";
        SqlCommand userExist3 = new SqlCommand(cmdStr3, con);
        int temp2 = Convert.ToInt32(userExist3.ExecuteScalar().ToString());
       // Response.Write(temp2);

        if (temp >= 1 || temp1>=1 || temp2 >=1)
        {

            String cd = "select sum(Fine) from DateFine where Date='" + TextBox1.Text + "'";
            //Response.Write(cd);
            SqlCommand userexist4 = new SqlCommand(cd, con);
            try
            {

                tf = Convert.ToDouble(userexist4.ExecuteScalar());
                //for (int i = 1; i <= n; i++)
                //{
                //    SqlCommand cmd = new SqlCommand("Select Fine From DateFine Where Date='" + TextBox1.Text + "'", con);
                //    SqlDataAdapter da = new SqlDataAdapter(cmd);
                //    DataSet ds = new DataSet();
                //    da.Fill(ds, "DateFine");

                //    DataRow dr = ds.Tables[0].Rows[i];
                //    string Fine = dr[0].ToString();
                //    Double f = Convert.ToDouble(Fine.ToString());
                //    tf = tf + f;
                //}
                Panel1.Visible = true;
                Label1.Text = tf.ToString();
            }
           
            catch(Exception ex)
            {
                int t = 0;
                Panel1.Visible = true;
                Label1.Text = t.ToString();
            }
           


        }
        else
        {

            Label2.Visible = true;

        }
    }
}