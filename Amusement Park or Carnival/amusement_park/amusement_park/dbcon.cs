using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace amusement_park
{
    public class dbcon
    {
        public SqlConnection Sqlcon = new SqlConnection();
        

        public dbcon()
        {
            Sqlcon = new SqlConnection(ConfigurationManager.AppSettings["con1"].ToString());
            Sqlcon.Open();
        }
    }
}