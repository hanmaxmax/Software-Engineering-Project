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

<%
    request.setAttribute("forwardUrl", "/pages/user/registration-his.jsp"); //map
%>

<div id="printapply" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>

            <div class="modal-title">
                <h1 class="text-center">打印准考证</h1>
            </div>

            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/servlet/printServlet?forwardUrl=${forwardUrl}" method="post">
                    <div class="form-group has-feedback">
                        <label for="apply-id">准考证号</label>
                        <div class="input-group">
                            <span class="input-group-addon">
									<span class="glyphicon glyphicon-lock"></span>
								</span>
                            <input id="apply-id" name="regid" class="form-control"
                                   placeholder="请输入需要打印的准考证号" maxlength="10" type="text">
                        </div>

                        <span style="color: red; display: none;" class="tips"></span> <span
                            style="display: none;"
                            class=" glyphicon glyphicon-remove form-control-feedback"></span>
                        <span style="display: none;"
                              class="glyphicon glyphicon-ok form-control-feedback"></span>
                    </div>

                    <div class="text-right">
                        <button class="btn btn-primary" type="submit" >提 交</button>
                        <button class="btn btn-danger" data-dismiss="modal">取 消</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 报名失败弹框 -->
<div id="apply-print-fail" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">打印失败，请先缴费</h1>
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
<c:if test="${not empty requestScope.printError}">
    <script>
        $('#apply-print-fail').modal("show");
    </script>
</c:if>


</body>
</html>