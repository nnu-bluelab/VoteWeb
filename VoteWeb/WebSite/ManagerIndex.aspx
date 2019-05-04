<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerIndex.aspx.cs" Inherits="VoteWeb.WebSite.ManagerIndex" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title> 主页</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" src="img/profile_small.jpg" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="text-muted text-xs block">个人中心<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li>
                                    <a href="Login.aspx">安全退出</a>
                                </li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            Home
                        </div>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span>管理菜单</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            
                                  <li>
                                <a class="J_menuItem" href="Managers/User.aspx">用户管理</a>
                                  </li>
                            <li>
                                <a class="J_menuItem" href="Managers/VoteType.aspx">作品类型管理</a>
                                  </li>
                            <li>
                                <a class="J_menuItem" href="Managers/PictureVote.aspx">绘画作品管理</a>
                                  </li>
                            <li>
                                <a class="J_menuItem" href="Managers/ArticleVote.aspx">诗文作品管理</a>
                                  </li>
                            <li>
                                <a class="J_menuItem" href="Managers/PhotographVote.aspx">摄影作品管理</a>
                            </li>
                             <li>
                                <a class="J_menuItem" href="Managers/VLogVote.aspx">视频作品管理</a>
                            </li>

                            </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                </nav>
                </div>

                <div class="row content-tabs">
                    <nav class="page-tabs J_menuTabs">
                        <div class="page-tabs-content">
                            <a href="javascript:;" class="active J_menuTab" data-id="Managers/User.aspx">用户管理</a>
                        </div>
                    </nav>

                    <div class="btn-group roll-nav roll-right">
                        <button class="dropdown J_tabClose" data-toggle="dropdown">
                            关闭操作<span class="caret"></span>
                        </button>
                        <ul role="menu" class="dropdown-menu dropdown-menu-right">
                            <li class="J_tabShowActive">
                                <a>定位当前选项卡</a>
                            </li>
                            <li class="divider"></li>
                            <li class="J_tabCloseAll">
                                <a>关闭全部选项卡</a>
                            </li>
                            <li class="J_tabCloseOther">
                                <a>关闭其他选项卡</a>
                            </li>
                        </ul>
                    </div>
                    
                   
                </div>

            <!--设置起始页-->
                <div class="row J_mainContent" id="content-main">
                    <iframe class="J_iframe" name="iframe0" style="width:100% ; height:100%" src="Managers/User.aspx" frameborder:"0" data-id="Managers/User.aspx" seamless></iframe>
                </div>
            </div>
        <!--右侧部分结束-->
    </div>
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/layer/layer.min.js"></script>
    <script src="js/hplus.min.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/contabs.min.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>
</body>
</html>
