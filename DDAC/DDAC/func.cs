using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DDAC
{
    public class func
    {
        private SqlConnection con() {
             string strconect = System.Configuration.ConfigurationManager.ConnectionStrings["CC"].ConnectionString;
          
                SqlConnection con = new SqlConnection(strconect);

                return con;
            }

        public int login_username(string username, string password)
        {
            try
            {
                string querry = "Select 1 from tbl_login where Email = @username and Password = @password ";
                SqlCommand cmd = new SqlCommand(querry);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                SqlConnection con = this.con();
                cmd.Connection = con;
                con.Open();
                try
                {
                   SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read())
                    {
                        return 0;                        
                    }
                    else
                    {
                        return 1;
                    }
                    }
                catch (Exception)
                {
                    return 2;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException ex)
            {
                return 3;
            }
        }
       

        public int createLogin(string name, string email, string password,string phone)
        {          
          try
            {
                string insert_querry = "insert into tbl_login" +
                    "([Full Name],Email,Password,[Phone#]) values " +
                   " (@name,@email,@password,@phone)";
                SqlCommand cmd = new SqlCommand(insert_querry);                
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;                
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;
                cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = phone;
                
                 SqlConnection con = this.con();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                   
                    return 0;

                }
                catch (SqlException ex)
                {
                    return 1;

                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException )
            {
                return 2;

            }


        }

         public DataTable getMap(string Destination,string origin,DateTime d1)
        {
            string query = "SELECT origin as ORIGIN,destination as DESTINATION,flydate as [Departure DateTime] from map " +
                "where origin =@orig and destination =@desti and flydate between @dd and dateadd(dd,3,@dd)";
            SqlConnection sqlConn = this.con();
            sqlConn.Open();
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            cmd.Parameters.Add("@desti", SqlDbType.NVarChar).Value = Destination;
            cmd.Parameters.Add("@orig", SqlDbType.NVarChar).Value = origin;
            cmd.Parameters.Add("@dd", SqlDbType.DateTime).Value = d1;
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            sqlConn.Close();
            return dt;
        }
        public DataTable getbookings(string name)
        {
            string query = "select id as [Ticket #],bookingID as [Booking ID],origin as Origin,destination as Destination,flydate as [Departure DateTime] from FLYTBL join map on MapID = map.origin  where bookingID = @username  ORDER BY id DESC";
            SqlConnection sqlConn = this.con();
            sqlConn.Open();
            SqlCommand cmd = new SqlCommand(query, sqlConn);
            cmd.Parameters.Add("@username", SqlDbType.NVarChar).Value = name;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            sqlConn.Close();
            return dt;
        }
        public int createbooking(string name, string email)
        {
            try
            {
                string insert_querry = "insert into FLYTBL(bookingID,MapID) values (@name,@email)";
                SqlCommand cmd = new SqlCommand(insert_querry);
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                SqlConnection con = this.con();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    return 0;

                }
                catch (SqlException ex)
                {
                    return 1;

                }
                finally
                {
                    con.Close();
                }
            }
            catch (SqlException)
            {
                return 2;

            }


        }

    }
}