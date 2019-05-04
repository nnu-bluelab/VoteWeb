using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Students.Manage
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserInfo user =(UserInfo) Session["User"];
                string author = user.Name;
                string sql =string.Format( "select * from WorksList where Type='诗文作品' and Author='{0}'  ",author);
                Repeater2.DataSource = SQLServices.GetDataSet(sql).Tables[0];
                Repeater2.DataBind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string sql = string.Format("delete from WorksList where ID={0}", Id);
            int result = new SQLServices().Number(sql);
            if (result != 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('删除成功！');window.location.replace('Articles.aspx');</script>");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('Articles.aspx');</script>");
            }
        }
    }
}