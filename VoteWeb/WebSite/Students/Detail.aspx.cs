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
    public partial class Detail : System.Web.UI.Page
    {
        UserInfo user = new UserInfo();
        Works works = new Works();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
             id = Convert.ToInt32(Request.QueryString["id"]);
            string sql = string.Format("select * from WorksList where ID='{0}' ", id);
            string sql2 = "";
            DataTable dt = SQLServices.GetDataSet(sql).Tables[0];
             works = new Works();
             user = (UserInfo)Session["User"];
            foreach (DataRow row in dt.Rows)
            {
                works.Name = row["Author"].ToString();
                works.Title= row["Title"].ToString();
            }
            if (!IsPostBack)
            {
              
                if (user.Type.Trim() == "教师" || user.Name.Trim()==works.Name.Trim())
                {
                  
                    sql2 = string.Format("select * from Message m, WorksList w where w.ID={0} and m.Title=w.Title", id);
                }
                else 
                {
                    sql2 = string.Format("select m.Name,m.Message from Message as m   where Title = '{0}'  and Name in ( select Name from UserList  where Type = '学生')", works.Title);
                }
                
                Repeater1.DataSource = SQLServices.GetDataSet(sql);
                Repeater1.DataBind();
                Repeater2.DataSource = SQLServices.GetDataSet(sql2);
                Repeater2.DataBind();
            }
        }

        protected void Comment_Click(object sender, EventArgs e)
        {
            string comment = Request.Form["Comment"];
            string sql = string.Format("insert into Message values( '{0}' , '{1}' , '{2}' )", works.Title, user.Name, comment);
            int result = new SQLServices().Number(sql);
            if (result != 0)
            {
                string re = string.Format("<script>alert('评论成功！');window.location.replace('Detail.aspx?id={0}');</script>", id);
                Response.Write(re);
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');</script>");
            }
        }

        
    }
}