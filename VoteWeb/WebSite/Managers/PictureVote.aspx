<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PictureVote.aspx.cs" Inherits="VoteWeb.WebSite.Managers.Vote" %>

<!DOCTYPE html>

<html>
  <head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>绘画</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet">

     
</head>
<body>
     <form id="form1" runat="server">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-14 animated fadeInRight">
                <div class="row">
                    <div class="col-sm-12">
                       
                      <asp:Repeater ID="Repeater2" runat="server">
                          <ItemTemplate>
                                    <div class="file-box">
                                        <a class="btn-link "  href="Detail.aspx?id=<%#Eval("ID")%>">
                            <div class="file">
                                    <span class="corner"></span>
                                    <div class="image">
                                        <img alt="image" class="img-responsive" src="<%# Eval("Src") %>">
                                    </div>
                                    <div class="file-name">
                                        <%# Eval("Title") %>
                                    </div>
                                <div>
                                    </a>
                                <asp:LinkButton ID="Button1" class="btn btn-danger btn-sm del" OnClick="Button1_Click" CommandArgument='<%# Eval("ID") %>' runat="server" Text="删除" />
                                </div>
                                
                            </div>
                        </div>
                       </ItemTemplate>
                                </asp:Repeater>
                        

                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
     <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$(".file-box").each(function(){animationHover(this,"pulse")})});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
