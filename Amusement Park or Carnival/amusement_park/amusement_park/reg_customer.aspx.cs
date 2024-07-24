using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class reg_customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            mainclass m1 = new mainclass();
            Label1.Text = "";
            Label2.Text = "";
            DataTable dt = new DataTable();
            dt = m1.username(TextBox4.Text);
            if (dt.Rows.Count > 0)
            {
                Label1.Text="Username already Exists";
            }
            else
            {
                
                if (TextBox5.Text == TextBox6.Text)
                {
                    m1.insertcustomer(TextBox1.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text);
                    TextBox1.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    Response.Redirect("Cust_Login.aspx");
                }
                else
                {
                    Label1.Text = "Password Invalid, Please check the password";
                }
            }
        }
    }
}