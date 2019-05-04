using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VoteWeb.Services;

namespace VoteWeb.WebSite
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sql = "select Type,Url from VoteType";
                string sql2 = "select Type,Url2 from VoteType";
                Repeater1.DataSource = SQLServices.GetDataSet(sql);
                Repeater1.DataBind();
                Repeater2.DataSource = SQLServices.GetDataSet(sql2);
                Repeater2.DataBind();
            }
        }
        
    }
}