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
    public partial class PersonalDetail : System.Web.UI.Page
    {
        UserInfo user = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            user =(UserInfo) Session["User"];
            string sql = string.Format("select * from UserList where Name='{0}' ", user.Name);
            DataTable dt = SQLServices.GetDataSet(sql).Tables[0];
            foreach (DataRow row in dt.Rows)
            {

                name.Value = row["Name"].ToString().Trim();
                mysex.Value = row["Sex"].ToString().Trim();
                myclass.Value = row["Class"].ToString().Trim();
                mytype.Value = row["Type"].ToString().Trim();
                password.Value = row["Password"].ToString().Trim();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string sql = "";
            string Name = Request.Form["Name"].Trim();
            string Sex = Request.Form["mysex"].Trim();
            string Class = Request.Form["myclass"].Trim();
            string Password = Request.Form["password"].Trim();
            string Type = Request.Form["mytype"].Trim();
            sql = string.Format("update UserList set Name='{0}',Sex='{1}',Class='{2}',Type='{3}',Password='{4}' where ID={5} ", Name, Sex, Class, Type, Password, user.Id);
            if (Type != "学生" && Type != "教师" && Sex!="男" && Sex!="女")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败!身份或性别填写错误');window.location.replace('PersonalDetail.aspx');</script>");
            }
            else
            {
                bool result = new SQLServices().SqlOperate(sql);
                if (!result)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('修改成功！');window.location.replace('PersonalDetail.aspx');</script>");
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('PersonalDetail.aspx');</script>");
                }
            }

        }
    }
}