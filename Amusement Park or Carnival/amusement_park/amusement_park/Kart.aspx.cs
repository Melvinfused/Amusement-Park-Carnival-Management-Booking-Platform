using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class Kart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cache Disabling
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetNoStore();

            //// Set booking date limits for the calendar control
            //DateTime minBookingDate = DateTime.Now.AddDays(1); // Set the minimum booking date (e.g., tomorrow)
            //DateTime maxBookingDate = DateTime.Now.AddDays(30); // Set the maximum booking date (e.g., 30 days from now)
            //Calendar1.VisibleDate = minBookingDate; // Set the initial visible month to the minimum booking date
            //Calendar1.MinDate = minBookingDate; // Set the minimum selectable date
            //Calendar1.MaxDate = maxBookingDate; // Set the maximum selectable date

            if (!IsPostBack)
            {
                mainclass m1 = new mainclass();
                DataTable dt = new DataTable();
                string cusid = Session["cid"].ToString();
                dt = m1.getCartdata(cusid);

                // Set the minimum and maximum date range
                rvRange.MinimumValue = DateTime.Now.ToShortDateString();
                rvRange.MaximumValue = DateTime.Now.AddDays(5).ToShortDateString();

                // Optionally, you can also set the error message dynamically
                rvRange.ErrorMessage = "Please select a date within the 5 days from today";

                //rvRange.MaximumValue = DateTime.Now.AddDays(30).ToString("yyyy-MM-dd");
                //rvRange.MinimumValue = DateTime.Now.ToString("yyyy-MM-dd");
                //rvRange.ErrorMessage = "Booking allowed only for 30 days from today";
                if (dt != null && dt.Rows.Count > 0)
                {
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                    getTotal();
                }
                //Repeater1.DataSource = dt;
                //Repeater1.DataBind();
                //getTotal();
                else
                {
                    // Display "Cart is empty" message
                    Repeater1.Visible = false;
                    EmptyCartMessage.Visible = true;
                }

            }

            // Set a minimum date (e.g., today) for the Calendar control without time
            //DateTime todayWithoutTime = DateTime.Now.Date;
            //Calendar1.TodaysDate = todayWithoutTime;
            // Set a minimum date (e.g., today) for the Calendar control without time

            //DateTime todayWithoutTime = DateTime.Now.Date;
            //Calendar1.TodaysDate = todayWithoutTime;

            //// Set a maximum booking limit for the calendar control
            //DateTime maxBookingDate = DateTime.Now.AddDays(30); // Set the maximum booking date (e.g., 30 days from now)
            //Calendar1.MaxDate = maxBookingDate; // Set the maximum selectable date

            //// Check if the user has already made bookings and retrieve the booking counts for each date
            //Dictionary<DateTime, int> bookingCounts = GetBookingCounts(); // Implement this method to retrieve booking counts
            //Session["BookingCounts"] = bookingCounts;
        }

        public void getTotal()
        {
            mainclass m1 = new mainclass();
            DataTable dt = new DataTable();
            string cusid = Session["cid"].ToString();
            dt = m1.getTotalamount(cusid);
            Label5.Text = dt.Rows[0]["total"].ToString();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            mainclass m2 = new mainclass();
            string crtid = ((LinkButton)(sender)).CommandArgument.ToString();
            //string cusid = Session["cid"].ToString();
            m2.getdatacancel(crtid);
            getTotal();

            Response.Redirect("Kart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            string cusid = (string)Session["cid"].ToString();
            mainclass cls = new mainclass();
             
                foreach (RepeaterItem item in Repeater1.Items.Cast<RepeaterItem>().ToList())
                {
                    TextBox textBox1 = item.FindControl("TextBox1") as TextBox;
                    HiddenField proprice = (HiddenField)item.FindControl("HiddenField1");
                    HiddenField cartid = (HiddenField)item.FindControl("HiddenField2");
                    int price = int.Parse(proprice.Value);
                    string pid = cartid.Value;
                    int quantity = int.Parse(textBox1.Text) + 1;

                    cls.UpdateCartitems(cusid, pid, quantity, price, bt.CommandName);
                    Repeater1.DataSource = cls.getCartdata(cusid);
                    Repeater1.DataBind();
                    getTotal();


                //displaytotalamount();
            }
            
        }
            protected void Button2_Click(object sender, EventArgs e)
            {


                //protected void calendar1_SelectionChanged(object sender, EventArgs e)
                //{
                //    // Get the selected date from the Calendar control
                //    DateTime selectedDate = Calendar1.SelectedDate;

                //    // Store the selected date in a session variable
                //    Session["SelectedDate"] = selectedDate;
                //}


                //protected void LinkButton2_Click(object sender, EventArgs e)
                //{

                //    string price = Label5.Text;
                //    Response.Redirect("Payment.aspx?id=" + price);

                //}
            }



            protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
            {
                SelectedDateTextBox.Text = Calendar1.SelectedDate.ToShortDateString();

            // Get the selected date from the Calendar control
            DateTime selectedDate = Calendar1.SelectedDate;

                // Store the selected date in a session variable
                Session["SelectedDate"] = selectedDate;
            }

            protected void LinkButton2_Click(object sender, EventArgs e)
            {
                string price = Label5.Text;
                Response.Redirect("Payment.aspx?id=" + price);
            }

            protected void Button2_Click1(object sender, EventArgs e)
            {
            //TextBox textBox1 = item.FindControl("TextBox1") as TextBox;
            //HiddenField proprice = (HiddenField)item.FindControl("HiddenField1");
            //HiddenField price = (HiddenField)item.FindControl("HiddenField2");
            //HiddenField qty = (HiddenField)item.FindControl("HiddenField3");
            //int price = int.Parse(price.Value);
            //string rid = crtid.Value;
            //int quantity = int.Parse(textBox1.Text) - 1;
            //if (quantity == 0)
            //{
            //    cls.deletecartItem(pid, cusid, bt.CommandName);
            //}
            //else
            //{
            //    cls.UpdateCartitems(cusid, pid, quantity, price, bt.CommandName);
            //}
            //Repeater1.DataSource = cls.getcartdata(cusid);
            //Repeater1.DataBind();
            //displaytotalamount();
        }

        protected void Button2_Click2(object sender, EventArgs e)
        {
            Button bt = new Button();
            bt = (Button)sender;
            string cusid = (string)Session["cid"].ToString();
            mainclass cls = new mainclass();

            foreach (RepeaterItem item in Repeater1.Items.Cast<RepeaterItem>().ToList())
            {
                TextBox textBox1 = item.FindControl("TextBox1") as TextBox;
                HiddenField proprice = (HiddenField)item.FindControl("HiddenField1");
                HiddenField cartid = (HiddenField)item.FindControl("HiddenField2");
                int price = int.Parse(proprice.Value);
                string pid = cartid.Value;
                int quantity = int.Parse(textBox1.Text) - 1;
                if (quantity == 0)
                { 
                
                }
                else
                {
                    cls.UpdateCartitems(cusid, pid, quantity, price, bt.CommandName);
                    Repeater1.DataSource = cls.getCartdata(cusid);
                    Repeater1.DataBind();
                }
                getTotal();

            }   
             
        }
    }

}

