using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VoteWeb.Services
{
    public class SQLHelper
    {
        private static string connStirng =
          ConfigurationManager.ConnectionStrings["connString"].ToString();

        public static SqlConnection OpenDB()
        {
            try
            {
                SqlConnection oConn = new SqlConnection(connStirng);
                oConn.Open();

                return oConn;
            }
            catch
            {
                throw;
            }
        }

        public static void CloseDB(SqlConnection oConn)
        {
            try
            {
                oConn.Close();
            }
            catch
            {
                throw;
            }
        }
    }
}