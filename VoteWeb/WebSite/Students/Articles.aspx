<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="VoteWeb.WebSite.Students.Articles" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>诗文</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <form role="search" runat="server">
            <div class="form-group">
                <input type="text" placeholder="请输入您需要查找的内容 …" style="width: 200px; height: 30px; border: 1px solid #ccc; padding: 7px 0px; border-radius: 3px; padding-left: 5px;"
                    runat="server" name="search" id="search">
                <asp:Button ID="SearchBuntton" Style="cursor: pointer; height: 32px; width: 80px; border-radius: 5px;" runat="server" Text="搜索" OnClick="Page_Load" />
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="ibox">
                                <div class="ibox-content">

                                    <a class="btn-link " href="ArticleDetail.aspx?id=<%#Eval("ID")%>">
                                        <h2>
                                            <%# Eval("Title") %>
                                        </h2>
                                    </a>

                                    <div class="small m-b-xs">
                                        <strong><%# Eval("Author") %></strong>
                                    </div>
                                    <p>
                                        <%# Eval("Describe") %>
                                    </p>
                                    <div class="row">
                                        <div>

                                            <asp:LinkButton ID="Vote" runat="server" class="btn btn-primary" Text='<%#Eval("outp") %>'
                                                CommandArgument='<%# Eval("ID") %>'
                                                OnClick="Vote_Click" />
                                            <input style="background-color: white; border: 0px; outline: none; cursor: pointer;" type="text" id="num" name="Num" value="当前票数：<%# Eval("VoteNumber") %>" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </form>
    </div>

    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:47 GMT -->
</html>

