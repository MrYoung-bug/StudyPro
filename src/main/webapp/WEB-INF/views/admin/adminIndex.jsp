<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>大学生学习平台</title>
    <link rel="shortcut icon" href="https://8.url.cn/edu/edu_modules/edu-ui/img/nohash/favicon.ico">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${APP_PATH}/resources1/css/wukong-ui.css">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="${APP_PATH}/resources1/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="${APP_PATH}/resources1/bootstrap/js/bootstrap-select.min.js"></script>

    <script type="text/javascript" src="${APP_PATH}/resources1/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <div class="banner" id="banner"></div>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <ul class="nav nav-tabs wk-nav-menu" id="wk-nav-menu">
            <li role="presentation"><a id="leftNav">管理员模块&nbsp;&nbsp;<span class="glyphicon glyphicon-menu-up"
                                                                           aria-hidden="true"></span></a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">新增学生</a>
            </li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">学生信息查询</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">新增教师</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">教师信息查询</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">新增学院</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">学院信息管理</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">新增课程</a></li>
            <li role="presentation"><a href="javascript:void(0);" class="wk-main-menu-item">课程信息查询</a></li>
            <li role="presentation"><a href="#" class="wk-main-menu-item">注销登录</a></li>
        </ul>
    </div>
</div>

<div class="row">
    <div class="col-lg-2" id="wk-menu-panel" style="width: 15%;">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel-group wk-accordion-panel-group" id="accordion">
                    <%-- <div class="panel panel-info wk-accordion-header">
                         <div class="panel-heading">
                             <img src="${APP_PATH}/head/img_0001.jpg" class="img-circle" alt="头像加载失败">
                         </div>

                     </div>--%>
                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#AMenu" data-parent="#accordion"
                               class="click">学生信息管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="AMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createStudent"
                                        href="${APP_PATH}/admin/createStudent">
                                    新增学生&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createManyStudent"
                                        href="${APP_PATH}/admin/createStudentBatch">
                                    批量新增学生&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchStudent"
                                        href="${APP_PATH}/admin/searchStudent">
                                    学生信息查询&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>

                    </div>
                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#BMenu" data-parent="#accordion"
                               class="click">教师信息管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="BMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createTeacher"
                                        href="${APP_PATH}/admin/createTeacher">
                                    新增教师&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createManyTeacher"
                                        href="${APP_PATH}/admin/createTeacherBatch">
                                    批量新增教师&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchTeacher"
                                        href="${APP_PATH}/admin/searchTeacher">
                                    教师信息查询&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#CMenu" data-parent="#accordion"
                               class="click">学院管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>

                        <div id="CMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createCollege"
                                        href="${APP_PATH}/admin/createCollege">
                                    新增学院&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchCollege"
                                        href="${APP_PATH}/admin/searchCollege">
                                    学院信息查询&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>

                    </div>

                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#DMenu" data-parent="#accordion"
                               class="click">课程管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="DMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createCourse"
                                        href="${APP_PATH}/admin/createCourse">
                                    新增课程&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchCourse"
                                        href="${APP_PATH}/admin/searchCourse">
                                    课程信息查询&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#EMenu" data-parent="#accordion"
                               class="click">论坛管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="EMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchDiscussInfo">
                                    话题讨论&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#FMenu" data-parent="#accordion"
                               class="click">公告管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="FMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-createNotice">
                                    新增公告&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                    aria-hidden="true"></span>
                                </button>
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-searchNotice">
                                    公告信息查询&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- 添加功能点 -->
                    <div class="panel panel-info wk-accordion-header">
                        <div class="panel-heading">
                            <a data-toggle="collapse" href="#GMenu" data-parent="#accordion"
                               class="click">个人信息管理&nbsp;<span
                                    class=" glyphicon glyphicon-hand-down"
                                    aria-hidden="true"></span></a>
                        </div>
                        <div id="GMenu" class="panel-collapse collapse">
                            <div class="list-group wk-accordion-list-group">
                                <button type="button" class="list-group-item" id="wk-menu-panel-item-updateAdminInfo">
                                    个人信息修改&nbsp;<span class=" glyphicon glyphicon-triangle-right"
                                                      aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="rightTable" class="col-lg-10" style="padding:0px;">
        <iframe id="mainFrame" src="" width="100%" frameborder="0"
                onload="changeFrameHeight()">
        </iframe>
    </div>
</div>

<script>
    $(document).ready(function () {
        let flag = true;
        let span = $("#leftNav span");
        let pre = null;
        $(".click").click(function () {
            if (pre != null && pre.text() !== $(this).text()) {
                if (pre.children(span).hasClass("glyphicon-hand-up")) {
                    pre.children(span).removeClass("glyphicon-hand-up");
                    pre.children(span).addClass("glyphicon-hand-down");
                }
            }
            let children = $(this).children(span);
            if (children.hasClass("glyphicon-hand-down")) {
                children.removeClass("glyphicon-hand-down");
                children.addClass("glyphicon-hand-up");
            } else if (children.hasClass("glyphicon-hand-up")) {
                children.removeClass("glyphicon-hand-up");
                children.addClass("glyphicon-hand-down");
            }
            pre = $(this);
        });
        $("#leftNav").click(function () {
            if (span.hasClass("glyphicon-menu-down")) {
                span.removeClass("glyphicon-menu-down");
                span.addClass("glyphicon-menu-up");
            } else if (span.hasClass("glyphicon-menu-up")) {
                span.removeClass("glyphicon-menu-up");
                span.addClass("glyphicon-menu-down");
            }
            $("#wk-menu-panel").slideToggle();
            if (flag) {
                $("#rightTable").css("width", "100%");
                $("#rightTable").css("margin-left", "6px");
                flag = false;
            } else {
                $("#rightTable").css("width", "84%");
                $("#rightTable").css("margin-left", "0px");
                flag = true;
            }
        });
    });

    //计算子窗口高度
    function changeFrameHeight() {
        let ifm = document.getElementById("mainFrame");
        ifm.height = document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 9;
    }

    //监听窗口或框架的大小改变事件，并执行函数
    window.onresize = function () {
        changeFrameHeight();
    };

    //计算子菜单高度
    function changeMenuPanelHeight() {
        let panel = $("#wk-menu-panel");
        panel.height(document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 3);

    }

    changeMenuPanelHeight();

    window.onresize = function () {
        changeMenuPanelHeight();
    };


    //为子菜单的按钮设置点击事件
    $(".list-group-item").each(function () {
        $(this).on("click", function () {
            let url = $(this).attr("href");
            $("#mainFrame").attr("src", url);
        });
    });

    $(".wk-main-menu-item").each(function () {
        $(this).on("click", function () {
            let url = "";
            let id = $(this).attr("id").substr(19, $(this).attr("id").length);

            $("#mainFrame").attr("src", "" + id + ".html");
        });
    });


</script>

</body>
</html>