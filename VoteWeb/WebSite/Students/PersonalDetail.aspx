<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalDetail.aspx.cs" Inherits="VoteWeb.WebSite.Students.PersonalDetail" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>注册&修改</title>
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet" />
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet" />
    <link href="../css/plugins/iCheck/custom.css" rel="stylesheet" />
    <link href="../css/animate.min.css" rel="stylesheet" />
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet" />

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-5">
                <div class="ibox float-e-margins">

                    <div class="ibox-content">
                       <form runat="server">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">姓名：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="用户名" class="form-control" id="name" runat="server" value="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">性别：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="性别(请填写男或女)" id="mysex" runat="server" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">班级：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="班级" id="myclass" runat="server" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">身份：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="身份(请填写学生或教师)" id="mytype" runat="server" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">密码：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="密码" id="password" runat="server" class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <asp:LinkButton ID="Submit" class="btn btn-sm btn-white" runat="server" OnClick="Submit_Click">确定提交</asp:LinkButton>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/plugins/iCheck/icheck.min.js"></script>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>
