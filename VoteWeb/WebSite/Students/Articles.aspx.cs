using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Students
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo user = (UserInfo)Session["User"];
            string searchtext = Request.Form["search"];
            #region
            string sql = string.Format(@" declare @tmp table(
	                                                [Id] [int] ,
	                                                [Author] [varchar](50),
	                                                [Title] [varchar](50),
	                                                [Describe] [varchar](50),
	                                                [Type] [varchar](50),
	                                                [VoteNumber] [int],
	                                                [Src] [text] ,
	                                                [coun] int,
	                                                [outp] varchar(10)
	                                                );

                                                with a as ( select * from WorksList vl where Type='诗文作品' )
                                                ,b as (select count(1) as coun,WorksListId  from VoteRecord where UserId = {0} group by WorksListId)
                                                insert @tmp select a.*,ISNULL(b.coun,0) as coun,''as outp from a left join b on a.ID=b.WorksListId
                                                update @tmp set outp = '投一票' where coun = 0
                                                update @tmp set outp = '取消投票' where coun != 0

                                                select * from @tmp", user.Id);
            if (searchtext != null)
            {
                sql = string.Format(sql + " " + "where Title  like '%{0}%' ", searchtext);
            }
            #endregion
            DataSet ds = MySqlHelper.GetDataSet(sql);
            Repeater2.DataSource = ds.Tables[0];
            Repeater2.DataBind();

        }
            //下面这段东西是取dataset的数据
            //foreach (DataRow item in ds.Tables[0].Rows)
            //{
            //    var d = item["outp"].ToString();
            //    d = d + "";
            //}




        protected void Vote_Click(object sender, EventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
                //string sql = string.Format("update WorksList set VoteNumber=VoteNumber+1 where ID={0}  ", Id);

                UserInfo user = (UserInfo)Session["User"];
                string sql2 = string.Format("select count(1) from VoteRecord where WorksListId = {0} and UserId = {1}", Id, user.Id);
                int count = (int)MySqlHelper.ExecuteScalar(sql2);
                string sql = "";
                if (count > 0)
                {
                    //取消投票
                    sql = string.Format("update WorksList set VoteNumber=VoteNumber-1 where ID={0}  ", Id);
                    string delsql = string.Format("delete from VoteRecord where WorksListId = {0} and UserId = {1}", Id, user.Id);

                    MySqlHelper.ExecuteNonQuery(sql);
                    MySqlHelper.ExecuteNonQuery(delsql);//减投票记录

                    Response.Write("<script>alert('取消投票成功！');window.location.replace('Articles.aspx');</script>");
                }
                else
                {
                    //投票
                    sql = string.Format("update WorksList set VoteNumber=VoteNumber+1 where ID={0}  ", Id);
                    string updatesql = string.Format("insert VoteRecord values({0},{1},'{2}')", Id, user.Id, DateTime.Now.ToString("yyyy-MM-dd HH:mm"));

                    MySqlHelper.ExecuteNonQuery(sql);
                    MySqlHelper.ExecuteNonQuery(updatesql);//加投票记录

                    Response.Write("<script>alert('投票成功！');window.location.replace('Articles.aspx');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('投票失败！');</script>");
            }
        }

    }
}