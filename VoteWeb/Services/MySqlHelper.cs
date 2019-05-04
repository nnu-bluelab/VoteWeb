using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace VoteWeb.Services
{
    public class MySqlHelper
    {
        private static string connStr = ConfigurationManager.ConnectionStrings["connString"].ToString();

        public static string ReplaceHtmlTag(string html, int length = 80)
        {
            string strText = System.Text.RegularExpressions.Regex.Replace(html, "<[^>]+>", "");
            strText = System.Text.RegularExpressions.Regex.Replace(strText, "&[^;]+;", "");

            if (length > 0 && strText.Length > length)
                return strText.Substring(0, length);

            return strText;
        }

        //增删改，返回受影响参数，否则返回-1
        public static int ExecuteNonQuery(string sql, params SqlParameter[] ps)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddRange(ps);
                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        //模糊查询
        public static object ExecuteScalar(string sql, params SqlParameter[] ps)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddRange(ps);
                    conn.Open();
                    return cmd.ExecuteScalar();
                }
            }
        }

        //查看数据
        public static SqlDataReader ExecuteReader(string sql, params SqlParameter[] ps)
        {
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddRange(ps);
                    conn.Open();
                    return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
                }
            }
            catch (Exception ex)
            {
                conn.Dispose();
                throw ex;
            }
        }

        public static DataSet GetDataSet(string sql, params SqlParameter[] ps)
        {
            DataSet ds = new DataSet();
            using (SqlDataAdapter sda = new SqlDataAdapter(sql, connStr))
            {
                sda.SelectCommand.Parameters.AddRange(ps);
                sda.Fill(ds);
            }
            return ds;
        }
    }
}