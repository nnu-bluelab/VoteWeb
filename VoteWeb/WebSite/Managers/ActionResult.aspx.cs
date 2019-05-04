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
    public partial class ActionResult : System.Web.UI.Page
    {
        int userid = 0; string action = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            action = Session["Action"].ToString().Trim();
            userid = Convert.ToInt32(Session["UserId"]);
            if (action == "Edit_Click")
            {
                string sql = string.Format("select * from UserList where ID={0}", userid);
                DataTable dt = SQLServices.GetDataSet(sql).Tables[0];
                UserInfo user = new UserInfo();
                foreach (DataRow row in dt.Rows)
                {

                    name.Value = row["Name"].ToString().Trim();
                    mysex.Value = row["Sex"].ToString().Trim();
                    myclass.Value = row["Class"].ToString().Trim();
                    mytype.Value = row["Type"].ToString().Trim();
                    password.Value = row["Password"].ToString().Trim();
                }
                //name.Value = user.Name;
                //sex.Value = user.Sex;
                //myclass.Value = user.Class;
                //mytype.Value = user.Type;
                //password.Value = user.Password;
            }//if结尾
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string sql = "";
            string Name = Request.Form["Name"].Trim();
            string Sex = Request.Form["mysex"].Trim();
            string Class = Request.Form["myclass"].Trim();
            string Password = Request.Form["password"].Trim();
            string Type = Request.Form["mytype"].Trim();
            if (Type != "学生" && Type != "教师")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败!身份填写错误');window.location.replace('ActionResult.aspx');</script>");
            }
            else
            {
                if (action == "Add_Click")
                {
                    sql = string.Format("insert into UserList (Name,Sex,Class,Type,Password) values('{0}','{1}', '{2}','{3}','{4}' )  ", Name, Sex, Class, Type, Password);
                }
                else
                {
                    sql = string.Format("update UserList set Name='{0}',Sex='{1}',Class='{2}',Type='{3}',Password='{4}' where ID={5} ", Name, Sex, Class, Type, Password, userid);
                }

                int result = new SQLServices().Number(sql);
                if (result != 0)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作成功！');window.location.replace('User.aspx');</script>");
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('User.aspx');</script>");
                }
            }//第一个else结尾
            
        }
    }
}