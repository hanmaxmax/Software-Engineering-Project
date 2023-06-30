<!-- 用户缴费 230630修改 ggg -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>apply</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/CAPTCHA.css">
    <script src="${pageContext.request.contextPath}/js/apply.js"></script>
</head>

<body>


<div id="printapply" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <div class="modal-title">
                <h1 class="text-center">2023-12 报名</h1>
            </div>

            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/servlet/registrationServlet?forwardUrl=${forwardUrl}" method="post">
                    <div class="form-group has-feedback">
                        <label for="exam-time">考试时间</label>
                        <select id="exam-time" name="examtime" class="form-control">
                            <option value="202312">2023年 12月</option>
                        </select>
                    </div>

                    <div class="form-group has-feedback" id="apply-name-div">
                        <label for="apply-name">姓名</label>
                        <div class="input-group">
								<span class="input-group-addon"><span
                                        class="glyphicon glyphicon-user"></span></span> <input
                                id="apply-name" name="username" class="form-control"
                                placeholder="请输入真实姓名" maxlength="20" type="text">
                        </div>

                        <span style="color: red; display: none;" class="tips"></span> <span
                            style="display: none;"
                            class=" glyphicon glyphicon-remove form-control-feedback"></span>
                        <span style="display: none;"
                              class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback" id="apply-id-div">
                        <label for="apply-id">身份证号</label>
                        <div class="input-group">
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>
								</span>
                            <input
                                    id="apply-id" name="identificationid" class="form-control"
                                    placeholder="请输入身份证号码" maxlength="18" type="text">
                        </div>

                        <span style="color: red; display: none;" class="tips"></span> <span
                            style="display: none;"
                            class="glyphicon glyphicon-remove form-control-feedback"></span>
                        <span style="display: none;"
                              class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>

                    <div class="form-group has-feedback" id="apply-tel-div">
                        <label for="apply-tel">手机号码</label>
                        <div class="input-group">
								<span class="input-group-addon">
									<span class="glyphicon glyphicon-phone"></span>
								</span>
                            <input id="apply-tel" name="tel" class="form-control"
                                   placeholder="请输入手机号码" maxlength="11" type="text"
                                   value="${sessionScope.user.tel}">
                        </div>
                        <span style="color: red; display: none;" class="tips"></span> <span
                            style="display: none;"
                            class="glyphicon glyphicon-remove form-control-feedback"></span>
                        <span style="display: none;"
                              class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>

                    <div class="form-group">
                        <label for="exam-location">考试地点</label>
                        <select id="exam-location" name="examposition" class="form-control">
                            <option value="0">南开大学八里台校区</option>
                            <option value="1">南开大学津南校区</option>
                            <option value="2">天津大学卫津路校区</option>
                            <option value="3">天津大学北洋园校区</option>
                        </select>
                    </div>

                    <div class="text-right">
                        <span class="text-danger">${requestScope.registrationError}</span>
                        <button class="btn btn-primary" type="submit" >提 交</button>
                        <button class="btn btn btn-warning orm-control" type="reset">重 置</button>
                        <button class="btn btn-danger" data-dismiss="modal">取 消</button>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>

<!-- 报名失败弹框 -->
<div id="apply-fail" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">报名失败，请勿重复报名</h1>
            </div>

            <!-- 主体 -->
            <div class="modal-body">
                <div class="text-right">
                    <button class="btn btn-primary" type="submit" onclick="window.location.href='${pageContext.request.contextPath}${forwardUrl}'" data-dismiss="modal">确  定</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 报名失败之后返回，重新打开模态框 -->
<c:if test="${not empty registrationError}">
    <script>
        $('#apply-fail').modal("show");
    </script>
</c:if>

<!-- 报名成功弹框 -->
<div id="apply-success" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">报名成功</h1>
            </div>

            <!-- 主体 -->
            <div class="modal-body">
                <div class="text-right">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/payment.jsp">前往缴费</a>
                    <button class="btn btn-primary" type="submit" onclick="window.location.href='${pageContext.request.contextPath}${forwardUrl}'" data-dismiss="modal">确  定</button>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 报名成功后提示 -->
<c:if test="${not empty requestScope.registrationSuccess}">
    <script>
        $('#apply-success').modal("show");
    </script>
</c:if>

</body>
</html>