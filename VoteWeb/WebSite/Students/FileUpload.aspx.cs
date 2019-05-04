using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite.Students
{
    public partial class FileUpload : System.Web.UI.Page
    {
        UserInfo user = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            user = (UserInfo)Session["User"];
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string UploadURL = Server.MapPath("~/WebSite/Students/Works/Pictures/");//上传的目录
            string UploadURL2 = Server.MapPath("~/WebSite/Works/Pictures/");//上传的目录
            string fileNameNo = Path.GetFileName(FileUpload1.PostedFile.FileName); //获取文件名和扩展名
            string path1 = string.Format("{0}{1}",UploadURL, fileNameNo).Trim();
            string path2 = string.Format("{0}{1}", UploadURL2, fileNameNo).Trim();
            FileUpload1.PostedFile.SaveAs(UploadURL + FileUpload1.FileName);//保存图片
            FileUpload1.PostedFile.SaveAs(UploadURL2 + FileUpload1.FileName);//保存图片
            string path = string.Format("../Works/Pictures/{0}", fileNameNo);//组成相对路径
            string title = Request.Form["title"].ToString().Trim();
            string describe = Request.Form["describe"].ToString().Trim();
            string type = Request.Form["type"].ToString().Trim();
            string substance = Request.Form["substance"].ToString().Trim();
            string sql = "";
             if(substance=="" && type == "诗文作品")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败!请检查填写内容!');window.location.replace('FileUpload.aspx');</script>");
            }
             else if(substance!="" && type != "诗文作品")
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败!请检查填写内容!');window.location.replace('FileUpload.aspx');</script>");
            }
            else
            {
                if (type == "诗文作品")
                {
                    sql = string.Format("insert into WorksList (Author,Title,Describe,Type,Src) values('{0}','{1}', '{2}','{3}','{4}' )", user.Name, title, describe, type, substance);
                }
                else
                {
                    sql = string.Format("insert into WorksList (Author,Title,Describe,Type,Src) values('{0}','{1}', '{2}','{3}','{4}' )", user.Name, title, describe, type, path);
                }
                int result = new SQLServices().Number(sql);
                if (result != 0)
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('上传成功！');window.location.replace('FileUpload.aspx');</script>");
                }
                else
                {
                    this.Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('操作失败！');window.location.replace('FileUpload.aspx');</script>");
                }


            }//第一个else结尾



        }

     
    }
}