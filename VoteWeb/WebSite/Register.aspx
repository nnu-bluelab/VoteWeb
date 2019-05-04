<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="VoteWeb.WebSite.Register" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> 注册</title>
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <h3>欢迎注册 </h3>
            <form class="m-t" role="form" runat="server">
                <div class="form-group">
                    <input type="text" id="Name" name="Name" class="form-control" placeholder="请输入用户名" required="">
                </div>
                 <div class="form-group">
                    <input type="text" class="form-control"  id="Class" name="Class"  placeholder="请输入班级" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="Password" name="Password"  placeholder="请输入密码" required="">
                </div>
                <div class="form-group">
                    <input type="password"  id="Pwd" name="Pwd"  class="form-control" placeholder="请再次输入密码" required="">
                </div>
                  <div class="form-group">
                        <label  class="col-sm-3 control-label">选择注册性别</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="Sex">
                                <option>男</option><option>女</option>
                            </select>
                        </div><br /><br />
                    </div>
                 <div class="form-group">
                        <label  class="col-sm-3 control-label">选择注册身份</label>
                        <div class="col-sm-8">
                            <select class="form-control" name="Type">
                                <option>学生</option><option>教师</option>
                            </select>
                        </div><br /><br />
                    </div>
               <asp:Button ID="BtnRegist"  class="btn btn-primary block full-width m-b" runat="server" Text="立即登录 "
                    OnClick="BtnRegist_Click" />

                <p class="text-muted text-center"><small>已经有账户了？</small><a href="Login.aspx">点此登录</a>
                </p>

            </form>
        </div>
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",})});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>

