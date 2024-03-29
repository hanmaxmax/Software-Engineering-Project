<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link
            href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        <jsp:directive.include file="../assets/css/templatemo-tiya-golf-club.css"/>
    </style>
    <!-- 用户/管理员登录 -->
</head>
<body>

<!-- 登录窗口 -->
<div id="login" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="d-lg-none ms-auto me-3">
                <a class="btn custom-btn custom-border-btn" data-bs-toggle="offcanvas" href="#offcanvasExample"
                   role="button" aria-controls="offcanvasExample">登录</a>
            </div>

            <div class="modal-title">
                <h1 class="text-center">登录</h1>
            </div>

            <!-- 登录表单 -->
            <div class="modal-body">
                <form class="form-group"
                      action="${pageContext.request.contextPath}/servlet/loginServlet"
                      method="post">
                    <div class="form-group has-feedback">
                        <label for="login-account">用户名</label>
                        <div class="input-group">
								<span class="input-group-addon"><span
                                        class="glyphicon glyphicon-user"></span></span> <input
                                id="login-account" name="account" class="form-control"
                                placeholder="请输入用户名" maxlength="20" type="text">
                        </div>
                    </div>

                    <div class="form-group has-feedback">
                        <label for="login-password">密码</label>
                        <div class="input-group">
								<span class="input-group-addon"><span
                                        class="glyphicon glyphicon-lock"></span></span> <input
                                id="login-password" name="password" class="form-control"
                                placeholder="请输入密码" maxlength="20" type="password">
                        </div>
                    </div>

                    <div class="btn-group pull-left" data-toggle="buttons">
                        <label class="btn btn-default active"> <input
                                name="status" value="user" type="radio" checked>学生用户
                        </label>
                        <label class="btn btn-default">
                            <input name="status" value="admin" type="radio"> 教师
                        </label>
                        <label class="btn btn-default">
                            <input name="status" value="admin" type="radio"> 管理员
                        </label>
                    </div>

                    <div class="text-right">
                        <span class="text-danger">${requestScope.loginError}</span>
                        <button class="btn btn-primary" type="submit">登录</button>
                        <button class="btn btn-danger" data-dismiss="modal">取消</button>
                    </div>

                    <br/> <a href="" data-toggle="modal" data-dismiss="modal"
                             data-target="#register">还没有账号？点我注册</a>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- 登录失败之后返回，重新打开模态框 -->
<c:if test="${not empty loginError}">
    <script>
        $('#login').modal("show");
    </script>
</c:if>

</body>
</html>