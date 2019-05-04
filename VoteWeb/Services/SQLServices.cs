using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

namespace VoteWeb.Services
{
    public class SQLServices
    {
        private static string connStirng =
        ConfigurationManager.ConnectionStrings["connString"].ToString();

        /// <summary>
        /// 注册和登录
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public  int Number(string sql)
        {
            SqlConnection conn = SQLHelper.OpenDB();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = sql;
            return cmd.ExecuteNonQuery();

        }

        #region 管理员操作
        

        #endregion

        #region 用户操作


        public static  DataSet GetDataSet(string sql, params SqlParameter[] ps)
        {
            DataSet ds = new DataSet();
            using (SqlDataAdapter sda = new SqlDataAdapter(sql, connStirng))
            {
                sda.SelectCommand.Parameters.AddRange(ps);
                sda.Fill(ds);
            }
            return ds;
        }
        
        public bool SqlOperate(string sql)
        {
            bool has = false;
            SqlConnection conn = SQLHelper.OpenDB();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                has = true;
            }

            conn.Close();
            return has;
        }

        public string GetTitle(int id) 
        {
            string sql = string.Format("select * from Message where ID={0}", id);
            string title = "";
            SqlConnection conn = SQLHelper.OpenDB();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                 title = dr["Title"].ToString();
                break;
            }
            
            return title;
        }
        public  int GetVoteNum(int id)
        {
            string sql = string.Format("select VoteNumber from WorksList where ID={0}", id);
            SqlConnection conn = SQLHelper.OpenDB();
            SqlCommand cmd = new SqlCommand(sql, conn);
            int number =(int) cmd.ExecuteScalar();
            return number;
        }
        #endregion
    }
}