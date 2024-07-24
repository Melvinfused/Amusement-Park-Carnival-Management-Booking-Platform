using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String bid = Request.QueryString["id"].ToString();
            string cusid = Session["cid"].ToString();
            
            mainclass m1 = new mainclass();
            


            Repeater1.DataSource = m1.getbookingsexpanded(cusid,bid);
            Repeater1.DataBind();
        }

       
    }
}