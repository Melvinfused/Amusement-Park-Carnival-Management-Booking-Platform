using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class Landing_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mainclass m1 = new mainclass();
            DataList1.DataSource = m1.getdata();
            DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string d = ((LinkButton)(sender)).CommandArgument.ToString();
            mainclass m2 = new mainclass();
            DataTable dt = new DataTable();
            string cusid = Session["cid"].ToString();
            dt = m2.getdata(d);
            if(dt.Rows.Count>0)
            {
                string price = dt.Rows[0]["price"].ToString();
                m2.insertCart(cusid,d,price);
            }
            Response.Redirect("Kart.aspx?id=" + d);
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}