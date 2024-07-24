using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class DatedReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void datedreport()
        {
            mainclass m1 = new mainclass();
            
            string idate = (string)Session["idate"].ToString();
            string fdate = (string)Session["fdate"].ToString();
            string cusid = Session["cid"].ToString();
  
            Repeater1.DataSource = m1.getdatedreport(cusid, idate, fdate);
            Repeater1.DataBind();



        }
        protected void cal1(object sender, EventArgs e)
        {
            // Get the selected date from the Calendar control
            DateTime idate = Calendar1.SelectedDate;

            // Store the selected date in a session variable
            Session["idate"] = idate;
        }
        protected void cal2(object sender, EventArgs e)
        {
            // Get the selected date from the Calendar control
            DateTime fdate = Calendar1.SelectedDate;

            // Store the selected date in a session variable
            Session["fdate"] = fdate;
        }
        protected void button1_click1(object sender, EventArgs e)
        {
            datedreport();
        }
    }
}