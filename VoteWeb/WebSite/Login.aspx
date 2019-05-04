<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VoteWeb.WebSite.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if (window.top !== window.self) { window.top.location = window.location; }</script>
</head>

<body class="gray-bg" style="background-image:url(Works/1122.jpg);background-size:100%">
    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>
                <h2 class="logo-name">V</h2>
            </div>
            <h3>欢迎使用投票系统</h3>

            <form id="form1" class="m-t" runat="server">
                <div class="form-group">
                    <input type="text" class="form-control" runat="server" id="Name" name="Name" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" id="Password" runat="server" name="Password" class="form-control" placeholder="密码" required="">
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label full-height">选择登录身份</label>
                    <div class="col-sm-8">
                        <select id="Select1" name="Type" class="form-control">
                            <option>学生</option>
                            <option>教师</option>
                            <option>管理员</option>
                        </select>
                    </div>
                    <br />
                </div>
                <br />
                <asp:Button ID="BtnLogin"  class="btn btn-primary block full-width m-b" runat="server" Text="立即登录 "
                    OnClick="BtnLogin_Click" />
                <p class="text-muted text-center">
                    <a href="Register.aspx">注册一个新账号</a>
                </p>

            </form>
        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>

