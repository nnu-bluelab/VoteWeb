<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="VoteWeb.WebSite.Students.Manage.Articles" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>文章列表</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="../../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.min.css" rel="stylesheet">
    <link href="../../css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <link href="../../css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <form id="form1" runat="server">
    <div class="wrapper wrapper-content  animated fadeInRight blog">
        <div class="row">
            <div class="col-lg-4">

                 <asp:Repeater ID="Repeater2" runat="server">
                          <ItemTemplate>
                <div class="ibox">
                    <div class="ibox-content">
                            <h2>
                                   <%# Eval("Title") %>
                                </h2>
                        <div class="small m-b-xs">
                            <strong> <%# Eval("Author") %></strong>
                        </div>
                        <p>
                            <%# Eval("Describe") %>   </p>
                        <div class="row">
                            <div>
                                    <asp:LinkButton ID="Button1" class="btn btn-danger btn-sm del" OnClick="Button1_Click" CommandArgument='<%# Eval("ID") %>' runat="server" Text="删除" />
                                </div>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
                                </asp:Repeater>

            </div>
        </div>
    </div>
        </form>
    <script src="../../js/jquery.min.js?v=2.1.4"></script>
    <script src="../../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../../js/content.min.js?v=1.0.0"></script>
     <script src="../../js/plugins/sweetalert/sweetalert.min.js"> </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>

