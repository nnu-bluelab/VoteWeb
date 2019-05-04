<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="VoteWeb.WebSite.Students.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="shortcut icon" href="favicon.ico"/> 
    <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet"/>
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet"/>
    <link href="../css/animate.min.css" rel="stylesheet"/>
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet"/>
</head>
<body>
     <form id="form1" runat="server">
     
          <a type="" href="Pictures.aspx"><input type="button" class="btn btn-warning btn-circle" style="width:60px;height:auto"  value="Back" /></a>
          <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
        <div style="text-align:center">
         <img   style="vertical-align:middle; width:auto; height:300px" alt="image" class="box" src="<%# Eval("Src") %>" />
            </div>
            <div class="text-center article-title">
               <%# Eval("Describe") %>
               </div>
               </ItemTemplate>
                             </asp:Repeater>
              <div class="row">
                            <div class="col-lg-12">
                               
                                <h2>评论：</h2>
                                 <asp:Repeater ID="Repeater2" runat="server">
                          <ItemTemplate>
                                <div class="social-feed-box">
                                    <div class="social-avatar">
                                        <div class="media-body">
                                            <label><strong id="StrName"><%# Eval("Name") %> </strong>：</label>
                                          
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                            <%# Eval("Message") %>
                                        </p>
                                        <label   class="btn btn-info btn-rounded btn-sm xxx" >回复</label>
                                    </div>

                                </div>

                              </ItemTemplate>
                             </asp:Repeater>
                                 <div>
                                   <textarea style='border: 1px solid #94BBE2;width:400px;overflow: hidden;word-break:break-all;' id="comment" name="comment"  rows:"8"
                                       onpropertychange='this.style.posHeight=this.scrollHeight' onfocus='this.style.posHeight=this.scrollHeight' placeholder="说点什么吧！" ></textarea><br />
                                     <asp:LinkButton ID="Comment" runat="server"  class="btn btn-primary btn-sm " OnClick="Comment_Click">发表</asp:LinkButton>
                                </div>

                            </div>
                        </div>
    </form>
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script>
        $(function () {
            $('.xxx').click(function () {
                //console.log('点击了');
                var p = $(this).parent().parent().find('#StrName');
                console.log(p.html())
                var cval = $('#comment').val();
                // console.log(cval);
                $('#comment').val('@' + p.html() + cval);
            })
        })
    </script>
</body>
</html>
