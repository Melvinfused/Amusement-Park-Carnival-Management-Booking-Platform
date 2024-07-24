using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Xml.Linq;

namespace amusement_park
{
    public class mainclass : dbcon
    {
        public void insertride(string rname,string duration,string price,byte[] imgbyte)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO rides(rname,duration,price,rimage)VALUES(@rname,@duration,@price,@image)", Sqlcon);
            cmd.Parameters.AddWithValue("@rname",rname);
            cmd.Parameters.AddWithValue("@duration",duration);
            cmd.Parameters.AddWithValue("@price",price);
            cmd.Parameters.AddWithValue("@image",imgbyte);

            cmd.ExecuteNonQuery();
            
        }

        internal void selectride(string name, string age, string height, string date)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO bookings(name,age,height,date)VALUES(@name,@bage,@height,@date)", Sqlcon);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@bage", age);
            cmd.Parameters.AddWithValue("@height", height);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
        }

        internal DataTable getTotalamount(string username, string password)
        {
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt = new SqlDataAdapter("select * from customer where username=@username and password=@password", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@username", username);
            adpt.SelectCommand.Parameters.AddWithValue("@password", password);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable clogin(string username, string password)
        {
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt = new SqlDataAdapter("select * from customer where username=@username and password=@password", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@username",username);
            adpt.SelectCommand.Parameters.AddWithValue("@password",password);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
        }

        internal object getdata()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM rides WHERE status=1", Sqlcon);
            adpt.Fill(dt);
            return dt;
        }

            
        internal DataTable getTotalamount(string cusid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT sum(tprice) as total from Cart WHERE cid = @cusid and status=1", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cusid", cusid);
            adpt.Fill(dt);
            return dt;
        }

        internal object getdatacancel(string id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("UPDATE Cart set status=0 WHERE crtid=@id", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue ("@id", id);

            adpt.Fill(dt);
            return dt;
        }
        // get ride by id
        internal DataTable getdata( string id)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM rides WHERE rid = @id and status=1", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@id",id);
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable getCartdata(string cusid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM rides, Cart where rides.rid = Cart.rid and Cart.cid = @cusid and Cart.status = 1;", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cusid", cusid);
            adpt.Fill(dt);
            return dt;
        }
        //insert into cart
        public void insertCart(string cusid,string rid, string price)
        {
            SqlCommand cmd = new SqlCommand("insert into Cart (cid,rid,qty,tprice) Values (@cusid,@rid,@qty,@price) ", Sqlcon);
            cmd.Parameters.AddWithValue("@cusid", cusid);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@qty", "1");
            cmd.Parameters.AddWithValue("@rid", rid);
            cmd.ExecuteNonQuery();
        }

        public void updateride(string rname, string duration, string price, byte[] imgbyte, string rid)
        {
            if (imgbyte != null)
            {
                
                SqlCommand cmd = new SqlCommand("UPDATE rides SET rname=@rname,duration=@duration,price=@price,rimage=@image where rid=@rid", Sqlcon);
                cmd.Parameters.AddWithValue("@rname", rname);
                
                cmd.Parameters.AddWithValue("@duration", duration);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@image", imgbyte);
                cmd.Parameters.AddWithValue("@rid", rid);
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE rides SET rname=@rname,duration=@duration,price=@price WHERE rid=@rid", Sqlcon);
                cmd.Parameters.AddWithValue("@rname", rname);
                
                cmd.Parameters.AddWithValue("@duration", duration);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@rid", rid);
               
                cmd.ExecuteNonQuery();
            }

            Sqlcon.Close();
        }
        public void insertcustomer(string cname, string username, string password, string cpass, string email)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO customer(cname,username,password,email)VALUES(@cname,@username,@password,@email)", Sqlcon);
            cmd.Parameters.AddWithValue("@cname", cname);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@email", email);

            cmd.ExecuteNonQuery();

        }

        internal DataTable getdetails(string rid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM rides where rid=@rid", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@rid", rid);
            adpt.Fill(dt);
            return dt;
        }

        internal DataTable del_rides(string rid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("UPDATE rides set status=2 WHERE rid=@rid", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@rid",rid);
            adpt.Fill(dt);
            return dt;
        }
    

        internal void insertride(string text1, string text2, string text3, string text4, HttpPostedFile postedFile)
        {
            
        }
       
        internal DataTable username(string username)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * from customer where username=@username ", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@username", username);
            adpt.Fill(dt);
            return dt;
        }

        internal object Getreports()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM rides WHERE status=1", Sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        internal object Getreports2()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM customer", Sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        internal object Getreports3()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM bookings", Sqlcon);
            adpt.Fill(dt);
            return dt;
        }

        //internal object getCart(string cusid)
        //{
          
        //     DataTable dt = new DataTable();
        //     SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM Cart where Cart.cid = @cusid and Cart.status = 1;", Sqlcon);
        //     adpt.SelectCommand.Parameters.AddWithValue("@cusid", cusid);
        //     adpt.Fill(dt);
        //     return dt;
         
        //    //DataTable dt = new DataTable();
        //    //SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM Cart", Sqlcon);
        //    //adpt.Fill(dt);
        //    //return dt;
        //}
        internal DataTable insertbooking(string cusid, string id, string date, string fdate, string tot)
        {
            //using (SqlConnection connection = new SqlConnection("Data Source=Ex-Machina;Initial Catalog=Melvin;Integrated Security=True")) 
            //{
            //    string query = "INSERT INTO bookings (cid, rid, totprice) " + 
            //                   "SELECT cid, rid, tprice FROM Cart WHERE status = 1 AND cid = @cid";

            //    using (SqlCommand cmd = new SqlCommand(query, connection))
            //    {
            //        cmd.Parameters.AddWithValue("@cid", cusid);
            //        connection.Open();
            //        cmd.ExecuteNonQuery();
            //    }

            //}
            DataTable dt=new DataTable();
            SqlCommand cmd = new SqlCommand("INSERT INTO bookings (cid, totprice, date, fdate) Values (@cid,@totprice,@date,@fdate)", Sqlcon);
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT bid FROM bookings WHERE status=1 and cid = @cid", Sqlcon);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@fdate", fdate);
            cmd.Parameters.AddWithValue("@cid", cusid);
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cusid);
            cmd.Parameters.AddWithValue("@totprice", tot);
            
            cmd.ExecuteNonQuery();
            adpt.Fill(dt);
            return dt;


        }

        internal void clearcart(string cusid, string pid)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Cart SET bid=@pid, status=0 where cid=@cid and status=1", Sqlcon);

            cmd.Parameters.AddWithValue("@cid", cusid);
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.ExecuteNonQuery();
            //using (SqlConnection connection = new SqlConnection("Data Source=Ex-Machina;Initial Catalog=Melvin;Integrated Security=True"))
            //{
            //    string query = "UPDATE Cart set bid=b.bid FROM Cart c JOIN bookings b ON c.rid=b.rid";
            //    string query2 = "UPDATE Cart set status=0 where cid=@cid";
            //    connection.Open();

            //    using (SqlCommand cmd = new SqlCommand(query, connection))
            //    {
            //        cmd.Parameters.AddWithValue("@cusid", cusid); // Corrected parameter name to @cusid
            //        cmd.ExecuteNonQuery();
            //    }

            //    using (SqlCommand cmd = new SqlCommand(query2, connection))
            //    {
            //        cmd.Parameters.AddWithValue("@cid", cusid); // Corrected parameter name to @cusid
            //        cmd.ExecuteNonQuery();
            //    }

            //using (SqlCommand cmd = new SqlCommand(query, connection))
            //{
            //    cmd.Parameters.AddWithValue("@cid", cusid);

            //    cmd.ExecuteNonQuery();
            //}

            //string query2 = "UPDATE Cart set status=0 where cid=@cusid";

            //using (SqlCommand cmd = new SqlCommand(query2, connection))
            //{
            //    //cmd.Parameters.AddWithValue("@cid", cusid);

            //    cmd.ExecuteNonQuery();
            //}

        }

        internal DataTable getmybookings(string cusid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT bookings.* FROM bookings WHERE bookings.status = 1  AND bookings.cid = @cid", Sqlcon);
            
            //SELECT* from bookings,rides,Cart where bookings.bid = Cart.bid and Cart.rid = rides.rid and bookings.status = 1 and bookings.cid = @cid groupby distinct booking.cid
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cusid);
            adpt.Fill(dt);
            return dt;
        }
    
        public void UpdateCartitems(string cusid, string crtid, int qty, int price, string commandname)
        {
            if (crtid == commandname)
            {
                SqlCommand cmd = new SqlCommand("UPDATE Cart SET qty=@qty, tprice=@total where cid=@cusid and crtid=@crtid and status=1", Sqlcon);
                int total = price * qty;
                cmd.Parameters.AddWithValue("@qty", qty);
                cmd.Parameters.AddWithValue("@total", total);
                cmd.Parameters.AddWithValue("@cusid", cusid);
                cmd.Parameters.AddWithValue("@crtid", crtid);
                cmd.ExecuteNonQuery();
            }
        }



        internal DataTable cancelbooking(string cusid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("UPDATE bookings set status=0 WHERE cid=@id", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@id", cusid);

            adpt.Fill(dt);
            return dt;
        }

        internal object bookinghistory(string cusid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT * from bookings,rides,Cart where bookings.bid=Cart.bid and Cart.rid=rides.rid and bookings.status=0 and bookings.cid=@cid", Sqlcon);
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cusid);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getbookingsexpanded(string cusid, string bid)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT* from bookings,rides,Cart where bookings.bid = Cart.bid and Cart.rid = rides.rid and bookings.status = 1 and bookings.cid = @cid and bookings.bid=@bid", Sqlcon);

            //SELECT* from bookings,rides,Cart where bookings.bid = Cart.bid and Cart.rid = rides.rid and bookings.status = 1 and bookings.cid = @cid groupby distinct booking.cid
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cusid);
            adpt.SelectCommand.Parameters.AddWithValue("@bid", bid);
            adpt.Fill(dt);
            return dt;
        }
        internal DataTable getdatedreport(string cusid, string idate, string fdate)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT* from bookings where cid=@cid and CONVERT(date, fdate) >=@idate and CONVERT(date, fdate) <=@fdate ", Sqlcon);

            //SELECT* from bookings,rides,Cart where bookings.bid = Cart.bid and Cart.rid = rides.rid and bookings.status = 1 and bookings.cid = @cid groupby distinct booking.cid
            adpt.SelectCommand.Parameters.AddWithValue("@cid", cusid);
            adpt.SelectCommand.Parameters.AddWithValue("@idate", idate);
            adpt.SelectCommand.Parameters.AddWithValue("@fdate", fdate);

            adpt.Fill(dt);
            return dt;
        }

        internal object Incomereport()
        {
            DataTable dt1 = new DataTable();
            //DataTable dt2 = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("SELECT cid, SUM(totprice) AS Earnings FROM bookings GROUP BY cid", Sqlcon);
            //SqlDataAdapter adpt2 = new SqlDataAdapter("SELECT SUM(totprice) Astotsum from bookings", Sqlcon);
            adpt.Fill(dt1);
            //adpt2.Fill(dt2);
            return dt1;
            //return dt2;

            //            SELECT SUM(field_name) AS total_sum
            //FROM your_table_name;

        }
    }

}