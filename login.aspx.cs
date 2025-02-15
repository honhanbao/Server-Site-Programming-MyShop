using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace A3GoodGums
{
    public partial class Login : System.Web.UI.Page
    {

        const string FILENAME = "loginfo.txt";
        // full path to the XML file
        string PATH = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String username = txtUsername.Text;
            String password = txtPassword.Text;

            PATH = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, FILENAME);
            string[] lines = File.ReadAllLines(PATH);

            foreach (string line in lines)
            {
                string[] arr = line.Split(':');
                if (username == arr[0] && password == arr[1])
                {
                    // Redirect to index.aspx page
                    Response.Redirect("index.aspx");


                }
                else
                {
                    // Display an error message
                    lblErrorMessage.Visible = true;
                    lblErrorMessage.Text = "Invalid username or password";

                    // Display an error message using JavaScript alert function
                    // string errorMessage = "Invalid username or password";
                    // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + errorMessage + "');", true);
                }
            }




        }
    }
}