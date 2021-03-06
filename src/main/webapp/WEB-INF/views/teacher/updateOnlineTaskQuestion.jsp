<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>大学生学习平台</title>
    <link rel="shortcut icon" href="https://8.url.cn/edu/edu_modules/edu-ui/img/nohash/favicon.ico">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="${APP_PATH}/resources1/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="${APP_PATH}/resources1/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/resources1/css/wukong-ui.css">
    <link rel="stylesheet" href="${APP_PATH}/resources1/bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="${APP_PATH}/resources1/bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <ul class="breadcrumb wk-breadcrumb">
            <li><a href="javascript:void(0)">大学生学习平台</a></li>
            <li><a href="javascript:void(0)">作业管理</a></li>
            <li><a href="javascript:void(0)">新增题目</a></li>
        </ul>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default wk-panel ">
            <div class="panel-heading">
                修改题目 Update Data
            </div>
            <form id="onlineTaskQuestionData" action="" method="POST">
                <div class="panel-body">
                    <div class="row">

                        <div class="form-inline">
                            <div class="form-group">
                                <label for="title" class="control-label wk-filed-label">题目: </label>
                                <div class="input-group">
                                    <input required="required" id="title" name="title" type="text"
                                           class="form-control wk-long-2col-input" placeholder="请输入题目"
                                           value="${taskQuestion.title}"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-inline">
                            <div class="form-group">
                                <label for="itemA" class="control-label wk-filed-label">选项A: </label>
                                <div class="input-group">
                                    <input required="required" id="itemA" name="itemA" type="text"
                                           class="form-control wk-normal-input" placeholder="请输入选项A"
                                           value="${taskQuestion.itemA}"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="itemB" class="control-label wk-filed-label">选项B: </label>
                                <div class="input-group">
                                    <input required="required" id="itemB" name="itemB" type="text"
                                           class="form-control wk-normal-input" placeholder="请输入选项B"
                                           value="${taskQuestion.itemB}"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="itemC" class="control-label wk-filed-label">选项C: </label>
                                <div class="input-group">
                                    <input required="required" id="itemC" name="itemC" type="text"
                                           class="form-control wk-normal-input" placeholder="请输入选项C"
                                           value="${taskQuestion.itemC}"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-inline">
                            <div class="form-group">
                                <label for="itemD" class="control-label wk-filed-label">选项D: </label>
                                <div class="input-group">
                                    <input required="required" id="itemD" name="itemD" type="text"
                                           class="form-control wk-normal-input" placeholder="请输入选项D"
                                           value="${taskQuestion.itemD}"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-inline">
                            <div class="form-group">
                                <label for="answer" class="control-label wk-filed-label">答案: </label>
                                <select class="selectpicker" id="answer" name="answer">
                                    <c:if test="${taskQuestion.answer=='A'}">
                                        <option value="A" selected="selected">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                    </c:if>
                                    <c:if test="${taskQuestion.answer=='B'}">
                                        <option value="A">A</option>
                                        <option value="B" selected="selected">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                    </c:if>
                                    <c:if test="${taskQuestion.answer=='C'}">
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C" selected="selected">C</option>
                                        <option value="D">D</option>
                                    </c:if>
                                    <c:if test="${taskQuestion.answer=='D'}">
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D" selected="selected">D</option>
                                    </c:if>
                                    <c:if test="${taskQuestion.answer!='A'&&taskQuestion.answer!='B'&&taskQuestion.answer!='C'&&taskQuestion.answer!='D'}">
                                        <option value="0">请选择答案</option>
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                    </c:if>
                                </select>
                            </div>
                        </div>

                        <div class="form-inline">
                            <div class="form-group">
                                <label for="score" class="control-label wk-filed-label">分值: </label>
                                <div class="input-group">
                                    <input required="required" id="score" name="score" type="text" maxlength="3"
                                           oninput="value=value.replace(/[^\d]/g,'')"
                                           class="form-control wk-normal-input" placeholder="请输入分值"
                                           value="${taskQuestion.score}"/>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </form>
        </div>
        <div class="panel-footer wk-panel-footer" style="margin-top:50px">
            <button type="button" class="btn btn-info" onclick="updateTaskQuestion()">提&nbsp;&nbsp;交</button>
            <button type="button" class="btn btn-info"
                    onclick="back()" style="margin-left: 20px">返&nbsp;&nbsp;回
            </button>
            <button type="button" class="btn btn-info"
                    onclick="$('#onlineTaskQuestionData')[0].reset();" style="margin-left: 20px">重&nbsp;&nbsp;填
            </button>

        </div>
    </div>
</div>

</body>
</html>
<script src="${APP_PATH}/resources/js/layer/layer.js"></script>
<script type="text/javascript">
    function updateTaskQuestion() {
        let title = $("#title").val();
        let itemA = $("#itemA").val();
        let itemB = $("#itemB").val();
        let itemC = $("#itemC").val();
        let itemD = $("#itemD").val();
        let answer = $("#answer").val();
        let score = $("#score").val();
        if (title.trim() === "") {
            layer.msg("标题不能为空，请重新输入", {time: 1500, icon: 5, shift: 6}, function () {
            });
            return;
        }
        if (title.indexOf(" ") === 0) {
            layer.msg("标题不能以空格开头，请重新输入", {time: 1500, icon: 5, shift: 6}, function () {
            });
            return;
        }
        if (itemA.trim() === "" || itemB.trim() === "" || itemC.trim() === "" || itemD.trim() === "") {
            layer.msg("选项内容不能为空，请重新输入", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        if (itemA.indexOf(" ") === 0 || itemB.indexOf(" ") === 0 || itemC.indexOf(" ") === 0 || itemD.indexOf(" ") === 0) {
            layer.msg("选项内容不能以空格开头，请重新输入", {time: 2000, icon: 5, shift: 6}, function () {
            });
            return;
        }
        if (score.trim() === "") {
            layer.msg("分值不能为空，请重新输入", {time: 1500, icon: 5, shift: 6}, function () {
            });
            return;
        }
        let loadingIndex = layer.msg('处理中', {icon: 16});
        //发送ajax请求
        $.ajax({
            url: "${APP_PATH}/teacher/updateOnlineTaskQuestion",
            type: "POST",
            dataType: "json",
            data: {
                "id":${taskQuestion.id},
                "title": title.trim(),
                "itemA": itemA.trim(),
                "itemB": itemB.trim(),
                "itemC": itemC.trim(),
                "itemD": itemD.trim(),
                "answer": answer.trim(),
                "score": score,
                "onlineTaskId": ${taskQuestion.onlineTaskId}
            },
            success: function (result) {
                layer.close(loadingIndex);
                if (result.code === 200) {
                    layer.msg(result.message, {time: 1500, icon: 5, shift: 6}, function () {
                    });
                }
                if (result.code === 100) {
                    layer.msg("修改成功", {time: 1000, icon: 1}, function () {
                    });
                }
            },
            error: function () {
                layer.msg("网络异常，请稍后再试", {time: 1500, icon: 5, shift: 6}, function () {
                });
            }
        });
    }

    function back() {
        if (${page!=null}) {
            window.location.href = "${APP_PATH}/teacher/searchOnlineTaskQuestion/${taskQuestion.onlineTaskId}?page=${page}&courseId=${courseId}&chapterId=${chapterId}";
        } else {
            window.location.href = "${APP_PATH}/teacher/searchOnlineTaskQuestion/${taskQuestion.onlineTaskId}?pageNum=${pageNum}&pageNumber=${pageNumber}";
        }
    }

</script>