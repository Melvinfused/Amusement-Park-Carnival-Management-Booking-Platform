using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String price = Request.QueryString["id"].ToString();
            Label1.Text = price;
            Label2.Text = price;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cusid = Session["cid"].ToString();  
            string id = (string)Session["crtid"];
            String fdate = Session["SelectedDate"].ToString();
            mainclass m = new mainclass();
            DataTable dt = new DataTable();
            DateTime curdate = DateTime.Now;
            string date = curdate.ToString();
            String tot = Request.QueryString["id"].ToString();
            //dt = (DataTable)m.getCart(cusid);
            //string rid = Session["rid"].ToString();

            //string cusid = Session["cid"].ToString();
            //string id = (string)Session["crtid"];
            //mainclass m = new mainclass();
            dt = m.insertbooking(cusid, id, date, fdate, tot);
            string pid = dt.Rows[0]["bid"].ToString();
            
            m.clearcart(cusid,pid);
            Response.Redirect("PaySuccess.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kart.aspx");
        }
    }
}