using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
         //   string fileLocation = Server.MapPath("~/C:\\Users\\dell\\Desktop\\mini2\\E-books/" + fileName);
            string fileLocation = Server.MapPath("~/D:\\MINI PROJECT\\mini2\\E-books/" + fileName);
            FileUpload1.SaveAs(fileLocation);

            //Create SQL Connection and Command to Save File name in DataBase

            string connectionString = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            SqlConnection sqlCon = new SqlConnection(connectionString);
            string strInsert = "INSERT INTO download(FileName) VALUES(@FileName)";
            SqlCommand command = new SqlCommand(strInsert, sqlCon);
            command.Parameters.AddWithValue("@FileName", fileName);
            sqlCon.Open();
            int result = command.ExecuteNonQuery();
            sqlCon.Close();

            if (result > 0)
                lblMessage.Text = "File Uploaded Successfully!";
        }
        
    }
   
}
