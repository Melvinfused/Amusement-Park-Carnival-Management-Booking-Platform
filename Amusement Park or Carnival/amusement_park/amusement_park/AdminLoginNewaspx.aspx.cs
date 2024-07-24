using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class AdminLoginNewaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = "admin";
            string pass = "password";

            if (TextBox2.Text == pass && TextBox1.Text == user)
            {
                Response.Redirect("Ride_Admin.aspx");

            }
            else
            {
                Label1.Text = "Invalid username or password";
            }
        }
    }
}