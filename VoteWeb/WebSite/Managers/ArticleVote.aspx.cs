using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Managers
{
    public partial class ArticleVote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select * from WorksList where Type='诗文作品'";
                Repeater2.DataSource = SQLServices.GetDataSet(sql).Tables[0];
                Repeater2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string sql = string.Format("delete from WorksList where ID={0}", Id);
            int result = new SQLServices().Number(sql);
            if (result!=0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('删除成功！');window.location.replace('ArticleVote.aspx');</script>");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('ArticleVote.aspx');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string getlist = string.Format("select * from WorksList where ID={0}", Id);
            Works works = new Works();
            DataTable dt = SQLServices.GetDataSet(getlist).Tables[0];
            foreach (DataRow row in dt.Rows)
            {

                works.Title = row["Title"].ToString();
            }
            works.Id = Id;
            Session["Works"] = works;
            Session["WorksType"] = "ArticleVote";
            if (works.Id != 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.location.replace('Detail.aspx');</script>");
            }
           
        }
    }
}