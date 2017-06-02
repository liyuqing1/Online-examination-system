<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cn.cslg.Online_examination_system.ToolBean.Exam" %>
<%@ page import="cn.cslg.Online_examination_system.ToolBean.Teacher" %>
<%@ page import="cn.cslg.Online_examination_system.ToolBean.StudentScore" %>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <title>在线考试系统 | 教师管理页 - 考试管理</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <link href="../media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/style-metro.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
        <link href="../media/css/uniform.default.css" rel="stylesheet" type="text/css"/>
        <link href="../media/css/jquery.fancybox.css" rel="stylesheet" />
        <link href="../media/css/chosen.css" rel="stylesheet" type="text/css"/>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link rel="shortcut icon" href="../media/image/laboratory.ico" />
    </head>
    <%
        Teacher teacher = (Teacher) request.getSession().getAttribute("user");
        ArrayList<Exam> exams = (ArrayList<Exam>) request.getAttribute("exams");
        List<ArrayList<StudentScore>> studentScoreList = (List<ArrayList<StudentScore>>) request.getAttribute("studentScoreList");
        pageContext.setAttribute("exams", exams);
        pageContext.setAttribute("teacher", teacher);
        pageContext.setAttribute("studentScoreList", studentScoreList);
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

    <div class="page-container row-fluid">
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
                                <a href="showExam.do">主页</a>
                                <span class="icon-angle-right"></span>
                            </li>
                            <li>
                                <a href="#">考试管理</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="row-fluid">
                    <div class="span12">
                        <div class="portlet box blue">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-edit"></i>
                                    考试信息
                                </div>
                                <div class="tools">
                                    <a href="javascript:;" class="collapse"></a>
                                    <a href="javascript:;" class="remove"></a>
                                </div>
                            </div>

                            <div class="portlet-body">
                                <div class="clearfix">
                                    <div class="btn-group">
                                        <button id="sample_editable_1_new" class="btn green" onclick="window.location.href='uploadExam.jsp'">
                                            添加考试 <i class="icon-plus"></i>
                                        </button>
                                    </div>
                                </div>

                                <div id="sample_editable_1_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_1">
                                            <div class="accordion collapse" id="accordion1" style="height: auto;">
                                                <%
                                                    for(int i = 0; i < studentScoreList.size(); ++i) {
                                                        ArrayList<StudentScore> studentScores = studentScoreList.get(i);
                                                %>
                                                        <div class="accordion-group">
                                                            <div class="accordion-heading">
                                                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion1" href="#collapse_<%=i+1%>">
                                                                    <table style="width: 100%;">
                                                                        <tr>
                                                                            <td style="width: 95%;"><%=exams.get(i).examID + " : " + exams.get(i).examName + "("+ exams.get(i).examTime +")"%></td>
                                                                            <td><i class="icon-remove" onclick="window.location.href='deleteExam.do?examID=<%=exams.get(i).examID%>'"></i></td>
                                                                        </tr>
                                                                    </table>
                                                                </a>
                                                            </div>

                                                            <div id="collapse_<%=i+1%>" class="accordion-body collapse" style="height: 0px;">
                                                                <div class="accordion-inner">
                                                                    <table>
                                                                        <tr>
                                                                            <td>考试名：<%=exams.get(i).examName%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>考试时间：<%=exams.get(i).examTime%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>考试持续时间：<%=exams.get(i).examMinutes%> (分钟)</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>单选题数量：<%=exams.get(i).onechoiceNumber%> 单选题分值：<%=exams.get(i).onechoiceScore%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>多选题数量：<%=exams.get(i).morechoiceNumber%> 多选题分值：<%=exams.get(i).morechoiceScore%></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>判断题数量：<%=exams.get(i).judgeNumber%> 判断题分值：<%=exams.get(i).judgeScore%></td>
                                                                        </tr>
                                                                    </table>
                                                                    <table class="table table-striped table-hover table-bordered dataTable" id="sample_editable_<%=i+1%>" aria-describedby="sample_editable_1_info">
                                                                        <thead>
                                                                        <tr role="row">
                                                                            <th class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="Username" style="width: 100px;">考试ID</th>
                                                                            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Full Name: activate to sort column descending" style="width: 100px;">学生ID</th>
                                                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width: 400px;" aria-label="Points: activate to sort column ascending">考试名</th>
                                                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width: 400px;" aria-label="Notes: activate to sort column ascending">学生名</th>
                                                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width: 400px;" aria-label="Edit: activate to sort column ascending">学生成绩</th>
                                                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" style="width: 130px;" aria-label="Delete: activate to sort column ascending">功能</th>
                                                                        </tr>
                                                                        </thead>

                                                                        <%
                                                                            for(int j = 0; j < studentScores.size(); ++j) {
                                                                        %>
                                                                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                                                                    <tr <%if(j%2==0){%>class="odd"<%}else{%>class="even"<%}%>>
                                                                                        <td class=""><%=studentScores.get(j).getExamID()%></td>
                                                                                        <td class="  sorting_1"><%=studentScores.get(j).getUserID()%></td>
                                                                                        <td class=" "><%=studentScores.get(j).getExamName()%></td>
                                                                                        <td class="center "><%=studentScores.get(j).getUserName()%></td>
                                                                                        <td class=" "><%=studentScores.get(j).getScore()%></td>
                                                                                        <td class=" ">
                                                                                            <a href="clearScore.do?userID=<%=studentScores.get(j).getUserID()%>&examID=<%=studentScores.get(j).getExamID()%>" class="icon"><i class="icon-remove"></i></a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                        <%
                                                                            }
                                                                        %>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>

                                                <%
                                                    }
                                                %>
                                            </div>

                                        </div>
                                    </div>
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

    <script src="../media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script src="../media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="../media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="../media/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../media/js/excanvas.min.js"></script>
    <script src="../media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="../media/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="../media/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="../media/js/jquery.uniform.min.js" type="text/javascript" ></script>
    <script src="../media/js/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="../media/js/chosen.jquery.min.js"></script>
    <script src="../media/js/app.js"></script>
    <script src="../media/js/gallery.js"></script>
    <script>
        jQuery(document).ready(function() {
            App.init();
            Gallery.init();
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