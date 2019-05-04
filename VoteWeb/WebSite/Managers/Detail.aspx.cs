using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Managers
{

    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id= Convert.ToInt32(Request.QueryString["id"]);
            UserInfo user = new UserInfo();
            string sql = string.Format("select * from WorksList where ID='{0}' ", id);
            string sql2 = string.Format("select * from Message m, WorksList w where w.ID={0} and m.Title=w.Title", id);
            Repeater1.DataSource = SQLServices.GetDataSet(sql);
            Repeater1.DataBind();
            Repeater2.DataSource = SQLServices.GetDataSet(sql2);
            Repeater2.DataBind();
        }

        protected void delect_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            string sql = string.Format("delete from Message where ID={0}", Id);
            int result = new SQLServices().Number(sql);
            if (result != 0)
            {
                Response.Write("<script>alert('删除成功！');</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！');</script>");
            }
        }
    }
}