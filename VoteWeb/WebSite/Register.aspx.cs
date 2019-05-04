using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegist_Click(object sender, EventArgs e)
        {

            string Name = Request.Form["Name"];
            string Sex = Request.Form["Sex"];
            string Class= Request.Form["Class"];
            string Password = Request.Form["Password"];
            string Pwd = Request.Form["Pwd"];
            string Type = Request.Form["Type"];
            string sql = string.Format("insert into UserList values ('{0}','{1}','{2}','{3}','{4}','{5}') ", Name,Sex,Class, Type,Password,Pwd);
            int result = new SQLServices().Number(sql);
            if (result!=0)
            {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册成功！');window.location.replace('Login.aspx');</script>");
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册失败！用户名或密码错误！');window.location.replace('Login.aspx');</script>");
            }
        }
    
    }
}