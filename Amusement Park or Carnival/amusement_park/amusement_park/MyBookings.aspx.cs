using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class MyBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string cusid = Session["cid"].ToString();
                //string id = (string)Session["crtid"];
                mainclass m = new mainclass();
                DataTable dt = new DataTable();
                //dt = (DataTable)m.getCart(cusid);
                //string rid = Session["rid"].ToString();

                //string cusid = Session["cid"].ToString();
                //string id = (string)Session["crtid"];
                //mainclass m = new mainclass();
                

         
                mainclass cls = new mainclass();
                Repeater1.DataSource = cls.getmybookings(cusid);
                Repeater1.DataBind();

                mainclass cls2 = new mainclass();
                Repeater2.DataSource = cls.bookinghistory(cusid);
                Repeater2.DataBind();
            }


        }
        
        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            string cusid = Session["cid"].ToString();
            mainclass cls = new mainclass();
            DataTable dt = new DataTable();
            dt = cls.cancelbooking(cusid);

            
            
            mainclass m = new mainclass();

            
            Repeater1.DataSource = cls.getmybookings(cusid);
            Repeater1.DataBind();

            mainclass cls2 = new mainclass();
            Repeater2.DataSource = cls.bookinghistory(cusid);
            Repeater2.DataBind();

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            string bid = bt.CommandName;

            Response.Redirect("booking.aspx?id=" + bid);
        }
    }
}