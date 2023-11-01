using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace anyhomework
{
    public partial class index : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox2.Visible = false;
                TextBox2.Text = DateTime.Now.ToString();
                Random r = new Random();
                int number = r.Next(1000, 999999);

                // Set the random number to TextBox3 and Label1
                TextBox3.Text = number.ToString();
                Label1.Text = TextBox3.Text;

                // Store the random number in the hidden input field
                ViewState["RandomNumber"] = number.ToString();
                hiddenRandomNumber.Attributes["value"] = number.ToString();

            }

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("index.aspx");
        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
           

            if (FileUpload1.PostedFile != null)
            {
                try
                {
                    string path = Server.MapPath("~/uploads/") + FileUpload1.FileName;
                    FileUpload1.SaveAs(path);
                }
                catch (Exception ex)
                {
                   // Label1.Text = ex.Message;
                }

        }
            if (FileUpload1.HasFile)
            {
                //var randomNumber = TextBox3.Text;

                // Set the random number to TextBox3 and Label1
                //TextBox3.Text = randomNumber;
                //Label1.Text = randomNumber;

                // Store the random number in the hidden input field
                var number = ViewState["RandomNumber"] as string;

                // Register the client-side script to call myFunction when the "Upload" button is clicked
                //ClientScript.RegisterStartupScript(this.GetType(), "CopyScript", "myFunction();", true);
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] imgbyte = new byte[length];
                HttpPostedFile img = FileUpload1.PostedFile;
                img.InputStream.Read(imgbyte, 0, length);
               
               


                Label1.Text = number.ToString();
                TextBox3.Text = Label1.Text;
                SqlConnection con = new SqlConnection("database=homework; server=FAZAL; user id=sa; password=computer");
                SqlCommand cmd = new SqlCommand("Insert into   homewk(name,uploadfile,date,code) values(@name,@uploadfile,@date,@code)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@uploadfile", FileUpload1.FileName);
                cmd.Parameters.AddWithValue("@date", TextBox2.Text);
                cmd.Parameters.AddWithValue("@code", TextBox3.Text);
                cmd.ExecuteNonQuery();

               
                con.Close();

            }
            

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("codesearch.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("nptel.aspx");
        }
    }

}
    
