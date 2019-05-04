<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="VoteWeb.WebSite.Managers.User1" %>

<!DOCTYPE html>

<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>User</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="../css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <form id="form1" runat="server">
        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="col-sm-12">
                <div class="example-wrap">
                    <div class="example">
                        <!--添加和删除-->
                        <div class="btn-group hidden-xs" id="exampleToolbar" role="group">
                             <asp:LinkButton ID="Add" type="button" class="btn btn-outline btn-default" runat="server" OnClick="Add_Click">
                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="Delete" runat="server" class="btn btn-outline btn-default" OnClick="Delete_Click">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>
                            </asp:LinkButton>

                            <asp:LinkButton ID="Edit" runat="server" class="btn btn-outline btn-default" OnClick="Edit_Click" >
                                <i class="glyphicon glyphicon-edit" aria-hidden="true"></i>
                            </asp:LinkButton>
                        </div>
                        <asp:Repeater ID="Repeater2" runat="server">
                         <HeaderTemplate>
                               <table style="width:600px; height:auto" class="table">
                                    <thead>
                                        <tr>
                                            <th data-field="state" data-checkbox="true"></th> 
                                            <th>名称</th>
                                            <th>性别</th>
                                            <th>班级</th>
                                            <th>身份</th>
                                            <th>密码</th>
                                        </tr>
                                    
                                    </thead>
                                    </HeaderTemplate>
                                     <ItemTemplate>
                                    <tr >
                                        <td  id="checkme"> <input type="checkbox" value='<%#Eval("ID") %>' id="CheckMes" name="CheckMes" /></td>
                                        <td><%#Eval("Name")%></td>
                                        <td><%#Eval("Sex")%></td>
                                        <td><%#Eval("Class")%></td>
                                        <td><%#Eval("Type")%></td>
                                        <td><%#Eval("Password")%></td>
                                    </tr>
                            </ItemTemplate>
                            <FooterTemplate></table></FooterTemplate>
                        </asp:Repeater>

                    </div>
                </div>
            </div>

        </div>
    </form>


    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script src="../js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script src="../js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="../js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="../js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="../js/demo/bootstrap-table-demo.min.js"></script>
   <script type="text/javascript">
       $(document).ready(function () {
           $(function () {
               $("#checkme").find(":checkbox").each(function () {
                   $(this).click(function () {
                       if ($(this).is(':checked')) {
                           $(this).attr('checked', true).siblings().attr('checked', false);
                       } else {
                           $(this).attr('checked', false).siblings().attr('checked', false);
                       }
                   });
               });
           });
       });

   </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>

