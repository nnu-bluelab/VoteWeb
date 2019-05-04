using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Managers
{
    public partial class User1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select * from UserList";
                Repeater2.DataSource = SQLServices.GetDataSet(sql).Tables[0];
                Repeater2.DataBind();
            }
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            var check = Request.Form.GetValues("CheckMes");
            int Id = Convert.ToInt32(check[0]);
            string sql = string.Format("delete from UserList where ID={0}", Id);
            int result = new SQLServices().Number(sql);
            if (result != 0)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('删除成功！');window.location.replace('User.aspx');</script>");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('User.aspx');</script>");
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Session["Action"] = "Add_Click";
            Response.Redirect("ActionResult.aspx");
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            var check = Request.Form.GetValues("CheckMes");
            int Id = Convert.ToInt32(check[0]);
            Session["Action"] = "Edit_Click";
            Session["UserId"] = Id;
            Response.Redirect("ActionResult.aspx");
        }
    }
}