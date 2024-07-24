using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class Master : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mainclass cls = new mainclass();
                Repeater1.DataSource = cls.getdata();
                Repeater1.DataBind();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mainclass m1 = new mainclass();
           byte[] imgbyte = null;
            HttpPostedFile file = FileUpload1.PostedFile;
            imgbyte = new byte[file.ContentLength];
            file.InputStream.Read(imgbyte, 0, file.ContentLength);

            if (file.ContentLength > 0)
            {
                m1.insertride(TextBox1.Text, TextBox3.Text, TextBox4.Text,imgbyte);
            }
            else if (Button1.CommandName == "")
            {
                m1.insertride(TextBox1.Text, TextBox3.Text, TextBox4.Text, imgbyte);
            }
            else
            {
                m1.updateride(TextBox1.Text, TextBox3.Text, TextBox4.Text, imgbyte, Button1.CommandName);
            }
        
            mainclass cls = new mainclass();
            Repeater1.DataSource = cls.getdata();
            Repeater1.DataBind();

        }
        protected void btn_edit_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            mainclass cls = new mainclass();
            DataTable dt = new DataTable();
            dt = cls.getdetails(bt.CommandName);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["rname"].ToString();
                TextBox3.Text = dt.Rows[0]["duration"].ToString();
                TextBox4.Text = dt.Rows[0]["price"].ToString();
                
                Image3.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["rimage"], 0, ((byte[])dt.Rows[0]["rimage"]).Length);
                Button1.CommandName = dt.Rows[0]["rid"].ToString();
            }
        }
        protected void btn_del_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            mainclass cls = new mainclass();
            DataTable dt = new DataTable();
            dt = cls.del_rides(bt.CommandName);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["rname"].ToString();
                
                TextBox3.Text = dt.Rows[0]["duration"].ToString();
                TextBox4.Text = dt.Rows[0]["price"].ToString();

                Image3.ImageUrl = "data:image/png;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["rimage"], 0, ((byte[])dt.Rows[0]["rimage"]).Length);
                Button1.CommandName = dt.Rows[0]["rid"].ToString();
            }
            
            Repeater1.DataSource = cls.getdata();
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}