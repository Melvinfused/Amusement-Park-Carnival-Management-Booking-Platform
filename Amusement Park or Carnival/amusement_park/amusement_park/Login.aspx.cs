using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            mainclass m1 = new mainclass();
            DataTable dt = new DataTable();
            dt = m1.clogin(TextBox1.Text, TextBox2.Text);
            if (dt.Rows.Count > 0)
            {
               
                Session["cid"] = dt.Rows[0]["cid"];
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Invalid username or password";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}