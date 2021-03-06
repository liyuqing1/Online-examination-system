<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.cslg.Online_examination_system.ToolBean.Teacher" %>
<%@ page import="cn.cslg.Online_examination_system.ToolBean.ContactInformation" %>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>在线考试系统 | 联系我们</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
        <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />
        <link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>
        <link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="shortcut icon" href="media/image/favicon.ico" />
    </head>
    <%
        Teacher teacher = (Teacher) request.getSession().getAttribute("user");
        ArrayList<ContactInformation> contactInformations = (ArrayList<ContactInformation>) request.getAttribute("contactInformations");
        pageContext.setAttribute("teacher", teacher);
        pageContext.setAttribute("contactInformations", contactInformations);
    %>
    <body class="page-header-fixed">
        <div class="header navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="brand" href="index.jsp"><img src="../media/image/logo.png" alt="logo" /></a>
                    <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                        <img src="../media/image/menu-toggler.png" alt="" />
                    </a>
                    <ul class="nav pull-right">
                        <li class="dropdown user">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img alt="" src="../media/image/avatar1_small.jpg" />
                                <span class="username"><%=teacher.getUserName()%></span>
                                <i class="icon-angle-down"></i>
                            </a>

                            <ul class="dropdown-menu">
                                <li class="divider"></li>
                                <li><a href="index.jsp"><i class="icon-key"></i> 注销</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="page-container">
            <div class="page-sidebar nav-collapse collapse">
                <ul class="page-sidebar-menu">
                    <li>
                        <div class="sidebar-toggler hidden-phone"></div>
                    </li>

                    <li>
                        <form class="sidebar-search">
                            <div class="input-box">
                                <a href="javascript:;" class="remove"></a>
                                <input type="text" placeholder="搜索..." />
                                <input type="button" class="submit" />
                            </div>
                        </form>
                    </li>

                    <li class="start">
                        <a href="showCourse.do">
                            <i class="icon-home"></i>
                            <span class="title">首页</span>
                        </a>
                    </li>

                    <li class="active ">
                        <a class="active" href="javascript:;">
                            <i class="icon-sitemap"></i>
                            <span class="title">功能列表</span>
                            <span class="arrow "></span>
                        </a>

                        <ul class="sub-menu">
                            <li>
                                <a href="javascript:;">
                                    课程管理
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="showCourse.do">查看课程</a></li>
                                    <li><a href="courseInformation.jsp?type=add">添加课程</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript:;">
                                    班级管理
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="showGrade.do">查看班级</a></li>
                                    <li><a href="uploadGrade.jsp">添加班级</a></li>
                                </ul>
                            </li>

                            <li>
                                <a href="javascript:;">
                                    考试管理
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li><a href="showExam.do">查看考试</a></li>
                                    <li><a href="uploadExam.jsp">添加考试</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="last ">
                        <a href="showContact.do">
                            <i class="icon-bar-chart"></i>
                            <span class="title">反馈</span>
                        </a>
                    </li>

                </ul>
            </div>
            <div class="page-content">
                <div id="portlet-config" class="modal hide">
                    <div class="modal-header">
                        <button data-dismiss="modal" class="close" type="button"></button>
                        <h3>portlet Settings</h3>
                    </div>
                    <div class="modal-body">
                        <p>Here will be a configuration form</p>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="color-panel hidden-phone">
                                <div class="color-mode-icons icon-color"></div>
                                <div class="color-mode-icons icon-color-close"></div>
                                <div class="color-mode">
                                    <p>更换颜色</p>
                                    <ul class="inline">
                                        <li class="color-black current color-default" data-style="default"></li>
                                        <li class="color-blue" data-style="blue"></li>
                                        <li class="color-brown" data-style="brown"></li>
                                        <li class="color-purple" data-style="purple"></li>
                                        <li class="color-grey" data-style="grey"></li>
                                        <li class="color-white color-light" data-style="light"></li>
                                    </ul>
                                </div>
                            </div>

                            <h3 class="page-title">
                                教师管理功能
                            </h3>

                            <ul class="breadcrumb">
                                <li>
                                    <i class="icon-home"></i>
                                    <a href="showContact.do">主页</a>
                                    <span class="icon-angle-right"></span>
                                </li>
                                <li>
                                    <a href="#">缺陷管理</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="dashboard">
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="portlet">
                                    <div class="portlet-title line">
                                        <div class="caption"><i class="icon-comments"></i>联系我们</div>
                                        <div class="tools">
                                            <a href="" class="collapse"></a>
                                            <a href="" class="remove"></a>
                                        </div>
                                    </div>

                                    <div class="portlet-body" id="chats">
                                        <div class="scroller" data-height="435px" data-always-visible="1" data-rail-visible1="1">
                                            <ul class="chats">
                                                <%
                                                    for(ContactInformation contactInformation : contactInformations){

                                                %>
                                                        <li class="<%=contactInformation.getType()%>">
                                                            <img class="avatar" alt="" src="../media/image/avatar1_small.jpg" />
                                                            <div class="message">
                                                                <span class="arrow"></span>
                                                                <a href="#" class="name"><%if(contactInformation.getType().equals("int")){%>管理员<%}else{%>我<%}%></a>
                                                                <span class="body">
                                                                    <%=contactInformation.getInformation()%>
                                                                </span>
                                                            </div>
                                                        </li>
                                                <%
                                                    }
                                                %>
                                            </ul>

                                        </div>

                                        <div class="chat-form">
                                            <form action="sendContact.do" method="post">
                                                <div class="input-cont">
                                                    <input class="m-wrap" type="text" name="information" placeholder="请在此输入您要反馈的信息..." />
                                                </div>

                                                <div class="btn-cont">
                                                    <span class="arrow"></span>
                                                    <input type="submit" class="btn blue icn-only" onclick="">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            <div class="footer-inner">
                2017 &copy; Metronic by keenthemes.Collect from
                <a href="#" >Model</a>
                - More Templates <a href="#" >Model</a>
            </div>

            <div class="footer-tools">
                    <span class="go-top">
                    <i class="icon-angle-up"></i>
                    </span>
            </div>
        </div>

        <script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
        <script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
        <script src="media/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="media/js/excanvas.min.js"></script>
        <script src="media/js/respond.min.js"></script>
        <script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>
        <script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>
        <script src="media/js/jquery.vmap.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
        <script src="media/js/jquery.flot.js" type="text/javascript"></script>
        <script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>
        <script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>
        <script src="media/js/date.js" type="text/javascript"></script>
        <script src="media/js/daterangepicker.js" type="text/javascript"></script>
        <script src="media/js/jquery.gritter.js" type="text/javascript"></script>
        <script src="media/js/fullcalendar.min.js" type="text/javascript"></script>
        <script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
        <script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="media/js/app.js" type="text/javascript"></script>
        <script src="media/js/index.js" type="text/javascript"></script>
        <script>

            jQuery(document).ready(function() {
               App.init(); // initlayout and core plugins
            });
        </script>
        <script language="javascript">
            //防止页面后退
            history.pushState(null, null, document.URL);
            window.addEventListener('popstate', function () {
                history.pushState(null, null, document.URL);
            });

            document.onkeydown = function() {
                if(event.keyCode==116) {
                    event.keyCode=0;
                    event.returnValue = false;
                }
            }

            document.oncontextmenu = function() {
                event.returnValue = false;
            }

            function submitPapar(){
                document.examPapar.submit();
            }

        </script>
    </body>
</html>