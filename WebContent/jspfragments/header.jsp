<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link
			href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
			rel="stylesheet">
	<script
			src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script
			src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>



/*	body {*/
/*	padding-top: 48px;*/
/*}*/
.li null{

}
	<jsp:directive.include file="../css/templatemo-tiya-golf-club.css" />
</style>

<title>header</title>
</head>
<body>
	<!-- 未登录则引入登录/注册所需的模态框 -->
	<c:if test="${empty sessionScope.user and empty sessionScope.admin and empty sessionScope.teacher}">
		<jsp:include page="/jspfragments/login.jsp" />
		<jsp:include page="/jspfragments/register-user.jsp" />
	</c:if>


	<!-- 页头 -->
	<!--响应式导航栏-->


	<nav class="navbar navbar-expand-lg" role="navigation">
	<div class="container">
		<a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/index.jsp">
			<span class="navbar-brand-text">         </span>
		</a>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>

		</div>
		<div class="collapse navbar-collapse navbar-left"
			 id="example-navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a
						href="${pageContext.request.contextPath}/index.jsp"><span
						class="glyphicon glyphicon-home"></span>主页</a></li>
			</ul>
		</div>


		<!--登录注册/用户中心、退出-->
		<c:if test="${empty sessionScope.user and empty sessionScope.admin and empty sessionScope.teacher}">
			<ul class="nav navbar-nav navbar-right">
				<li><button type="submit" class="btn btn-info navbar-btn"
						data-toggle="modal" data-target="#login" href="">
						<span class="glyphicon glyphicon-log-in"></span>&nbsp;登录
					</button></li>
				<!-- 形成简单间隔 -->
				<li>&nbsp;&nbsp;&nbsp;</li>
				<li><button type="submit" class="btn btn-success navbar-btn"
						data-toggle="modal" data-target="#register" href="">
						<span class="glyphicon glyphicon-user"></span>&nbsp;注册
					</button></li>
			</ul>
		</c:if>
		<c:if
			test="${not empty sessionScope.user or not empty sessionScope.admin or not empty sessionScope.teacher}">
			<ul class="nav navbar-nav navbar-right">

				<li><a href="#"><span class="text-primary">${sessionScope.user.account}${sessionScope.admin.account}${sessionScope.teacher.account}</span></a></li>
				<c:if test="${not empty sessionScope.user}">
<%--					<li><a--%>
<%--						href="${pageContext.request.contextPath}/servlet/getShoppingcartServlet"><span--%>
<%--							class="glyphicon glyphicon-shopping-cart"></span> 购物车</a></li>--%>
					<li><a
						href="${pageContext.request.contextPath}/pages/user/modify-info.jsp"><span
							class="glyphicon glyphicon-user"></span> 个人中心</a></li>
				</c:if>
				<c:if test="${not empty sessionScope.admin}">
					<li><a
						href="${pageContext.request.contextPath}/pages/admin/manage-users.jsp"><span
							class="glyphicon glyphicon-user"></span> 管理中心</a></li></c:if>
				<c:if test="${not empty sessionScope.teacher}">
					<li><a
							href="${pageContext.request.contextPath}/pages/teacher/revise-page.jsp"><span
							class="glyphicon glyphicon-user"></span> 阅卷中心</a></li>
				</c:if>

				<li><button type="submit" class="btn btn-danger navbar-btn"
						onclick="window.location.href='${pageContext.request.contextPath}/servlet/logoutServlet'">
						<span class="glyphicon glyphicon-log-out"></span> 退出
					</button></li>
			</ul>
		</c:if>
	</div>
	</nav>

	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.bundle.min.js"></script>
	<script src="../js/jquery.sticky.js"></script>
	<script src="../js/click-scroll.js"></script>
	<script src="../js/animated-headline.js"></script>
	<script src="../js/modernizr.js"></script>
	<script src="../js/custom.js"></script>

</body>
</html>