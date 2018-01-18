using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Issue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();

            string cmdStr = "Select count(*) from StudentRegg where MemberID='" + TextBox2.Text + "'";
            SqlCommand userExist = new SqlCommand(cmdStr, con);
            int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());

            if (temp == 1)
            {

                SqlCommand cmd = new SqlCommand("Select status From book Where ID='" + TextBox1.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "book");
                DataRow dr = ds.Tables[0].Rows[0];
                string status = dr[0].ToString();

                SqlCommand cmd1 = new SqlCommand("Select Type From book Where ID='" + TextBox1.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1, "book");
                DataRow dr1 = ds1.Tables[0].Rows[0];
                string Type = dr1[0].ToString();

                SqlCommand cmd4 = new SqlCommand("Select Count From StudentRegg Where MemberID='" + TextBox2.Text + "'", con);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd4);
                DataSet ds2 = new DataSet();
                da2.Fill(ds2, "StudentRegg");
                DataRow dr2 = ds2.Tables[0].Rows[0];
                string C = dr2[0].ToString();
                int Count = Convert.ToInt32(C.ToString());

                SqlCommand cmdc = new SqlCommand("Select Category From StudentRegg Where MemberID='" + TextBox2.Text + "'", con);
                SqlDataAdapter dac = new SqlDataAdapter(cmdc);
                DataSet dsc = new DataSet();
                dac.Fill(dsc, "StudentRegg");
                DataRow drc = dsc.Tables[0].Rows[0];
                string Ca = drc[0].ToString();



                /*  SqlCommand cmdm = new SqlCommand("Select MemberID(*) From StudentRegg Where MemberID='" + TextBox2.Text + "'", con);
                  SqlDataAdapter dam = new SqlDataAdapter(cmdm);
                  DataSet dsm = new DataSet();
                  dam.Fill(dsm, "StudentRegg");
                  DataRow drm = dsm.Tables[0].Rows[0];
                  string M = drm[0].ToString();   */

                int n = 0, d = 0;


                //  if (M == TextBox2.Text)
                //   {
                if (Ca == "Faculty")
                {
                    n = 6; d = 15;
                }

                else if (Ca == "Student")
                { n = 4; d = 7; }


                if (Type == "Reference")
                {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = true;
                    Label5.Visible = false;
                }


                else if (Type == "Stack")
                {
                    if (status == "Available")
                    {
                        if (Count < n)
                        {
                            DateTime Issue = System.DateTime.Now;
                            DateTime Ret = System.DateTime.Now.AddDays(d);
                            Count = Count + 1;
                            SqlCommand cmd2 = new SqlCommand("update book set status= '" + "Issued" + "', MemberID= '" + TextBox2.Text + "',Issuedate='" + Issue + "',ReturnDate='" + Ret + "' where ID='" + TextBox1.Text + "'", con);
                            cmd2.ExecuteNonQuery();
                            SqlCommand cmd5 = new SqlCommand("update StudentRegg set Count= '" + Count + "' where MemberID='" + TextBox2.Text + "'", con);
                            cmd5.ExecuteNonQuery();
                            Label2.Visible = false;
                            Label1.Visible = true;
                            Label3.Visible = false;
                            Label5.Visible = false;
                            con.Close();
                            
                        }

                        else
                        {
                            Label5.Visible = true;
                            Label1.Visible = false;
                            Label2.Visible = false;
                            Label3.Visible = false;
                        }

                    }
                    else
                    {
                        Label1.Visible = false;
                        Label2.Visible = true;
                        Label3.Visible = false;
                        Label5.Visible = false;
                    }

                }
            }




            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label5.Visible = false;
                Label6.Visible = true;
            }


        }

        catch (Exception ex)
        {
            string msg = ex.Message;
            Response.Write("ERROR");


        }


    }
}
  