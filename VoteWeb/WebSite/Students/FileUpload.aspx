<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="VoteWeb.WebSite.Students.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>作品上传</title>
    <link rel="shortcut icon" href="favicon.ico" />
    <link href="../css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet" />
    <link href="../css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet" />
    <link href="../css/animate.min.css" rel="stylesheet" />
    <link href="../css/style.min862f.css?v=4.1.0" rel="stylesheet" />
    <link href="../css/plugins/dropzone/dropzone.css" rel="stylesheet" />
</head>
<body class="gray-bg">
   

            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">
                                 <form class="form-horizontal" runat="server">

                                     <div class="form-group">
                                <label class="col-sm-3 control-label">标题：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="标题" class="form-control" id="title" runat="server" value=""/>
                                </div>
                            </div>

                                     <div class="form-group">
                                <label class="col-sm-3 control-label">简介：</label>
                                <div class="col-sm-8">
                                    <input type="text" placeholder="简介" class="form-control" id="describe" runat="server" value=""/>
                                </div>
                            </div>

                                     <div class="form-group">
                                <label class="col-sm-3 control-label">简介：</label>
                                <div class="col-sm-8">
                                    <textarea style="width:410px;height:300px" class="form-control" placeholder="诗文作品内容,非诗文作品勿填！" id="substance" runat="server"></textarea>
                                </div>
                            </div>

                                      <div class="form-group">
                                <label class="col-sm-3 control-label">选择类型：</label>
                                <div class="col-sm-8">
                                    <select  name="type">
                                         <option>绘画作品</option>
                                         <option>诗文作品</option>
                                         <option>摄影作品</option>
                                         <option>视频作品</option>
                                     </select>
                                      <br />
                                     <br />
                                     <asp:FileUpload Style='border: 1px solid #94BBE2; width: 200px; overflow: hidden; word-break: break-all;' ID="FileUpload1" runat="server" /><br /><br />
                                      <asp:LinkButton ID="submit" runat="server" class="btn btn-primary btn-sm" OnClick="submit_Click" Text="确认提交"></asp:LinkButton>
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
    <script src="../js/content.min.js?v=1.0.0"></script>
    <script src="../js/plugins/dropzone/dropzone.js"></script>
    <script src="../js/plugins/webuploader/webuploader.min.js"></script>
    <script src="../js/demo/webuploader-demo.min.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
