using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite
{
    public partial class Login : System.Web.UI.Page
    {
        //string str1 = Request.Form["UserName"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = Request.Form["Name"];
                string Password = Request.Form["Password"];
                string Type = Request.Form["Type"];
                string sql = string.Format("select * from UserList where Name='{0}' and Password = '{1}' ", Name, Password);
                DataTable dt = SQLServices.GetDataSet(sql).Tables[0];
                UserInfo user = new UserInfo();
                foreach (DataRow row in dt.Rows)
                {
                    user.Id = Convert.ToInt32(row["id"]);
                    user.Name = row["Name"].ToString();
                    user.Sex = row["Sex"].ToString();
                    user.Class = row["Class"].ToString();
                    user.Type = row["Type"].ToString();
                    user.Password = row["Password"].ToString();
                    user.Image = row["Image"].ToString();
                }
                Session["User"] = user;
                int result = new SQLServices().Number(sql);
                if (result != 0 && Type == (string)user.Type.Trim())
                {
                    if (Type == "学生")
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录成功！');window.location.replace('Index.aspx');</script>");
                    }
                    else if (Type == "教师")
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录成功！');window.location.replace('TeacherIndex.aspx');</script>");
                    }

                    else
                    {
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录成功！');window.location.replace('ManagerIndex.aspx');</script>");
                    }

                }

                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录失败！用户名或密码错误！');window.location.replace('Login.aspx');</script>");
                }
            }
            catch(Exception ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录失败！用户名或密码错误！');window.location.replace('Login.aspx');</script>");
            }
    }
    }
 }