<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VLogDetail.aspx.cs" Inherits="VoteWeb.WebSite.Managers.VLogDetail" %>

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
     
          <a type="" href="VLogVote.aspx"><input type="button" class="btn btn-warning btn-circle" value="Back" /></a>
          <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
        <div  style=" width:400px; height:auto;margin:0 auto;text-align:center" class="text-center article-title">
             <video  controls="controls">
                           <source src="<%# Eval("Src") %>" type="video/mp4"/> 
              </video>
            <h3><%# Eval("Title") %></h3>
            <h4><%# Eval("Author") %></h4>
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
                                            <label><strong><%# Eval("Name") %> ：</strong></label>
                                          
                                        </div>
                                    </div>
                                    <div class="social-body">
                                        <p>
                                            <%# Eval("Message") %>
                                        </p>
                                    </div>
                                      <div>
                                   <asp:LinkButton ID="delect" class="btn btn-danger btn-sm del" OnClick="delect_Click" CommandArgument='<%# Eval("ID") %>' runat="server" Text="删除" />
                                </div>
                                </div>

                              </ItemTemplate>
                             </asp:Repeater>
                               
                            </div>
                        </div>
    </form>
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>

