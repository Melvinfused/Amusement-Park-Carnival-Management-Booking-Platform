using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace amusement_park
{
    public partial class Admin_Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mainclass cls = new mainclass();
                Repeater1.DataSource = cls.Getreports();
                Repeater1.DataBind();

                mainclass cls2 = new mainclass();
                Repeater2.DataSource = cls2.Getreports2();
                Repeater2.DataBind();

                mainclass cls3 = new mainclass();
                Repeater3.DataSource = cls3.Getreports3();
                Repeater3.DataBind();

                mainclass cls4 = new mainclass();
                Repeater4.DataSource = cls4.Incomereport();
                Repeater4.DataBind();
            }
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}