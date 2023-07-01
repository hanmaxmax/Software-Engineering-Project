<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>英语六级考试报考系统</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
<c:if
		test="${empty finishAnswerList and empty registerSuccess and empty registerError and empty operateSuccess}">
	<script>
		window.location.href = '${pageContext.request.contextPath}/servlet/getFinishAnsServlet';
	</script>
</c:if>

	<!-- 网页头部 -->
	<jsp:include page="/jspfragments/header.jsp" />
	
	<!-- 增删改弹框引入 -->
<%--	<jsp:include page="/jspfragments/item/add-item.jsp" />--%>
<%--	<jsp:include page="/jspfragments/item/add-image.jsp" />--%>
<%--	<jsp:include page="/jspfragments/item/modify.jsp" />--%>
<%--	<jsp:include page="/jspfragments/item/delete.jsp" />--%>
 
	<!-- 网页正文 -->
	<br/><br /><br/><br />

	<div class="container">
		<div class="row">
			<!-- 左侧菜单栏 -->
			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<ul class="nav nav-pills nav-stacked">
							<li class="disabled"><a href="#"><font size="3"
									style="font-weight: bold;"><span
										class="glyphicon glyphicon-th-large"></span>阅卷中心</font></a></li>
						</ul>
					</div>
					<div class="panel-body">
						<ul class="nav nav-pills nav-stacked">
							<li><a
								href="${pageContext.request.contextPath}/pages/admin/manage-users2.jsp">
									<span class="glyphicon glyphicon-user"></span> 待批改
							</a></li>
							<li class="active"><a
								href="${pageContext.request.contextPath}/pages/admin/manage-items2.jsp"><span
									class="glyphicon glyphicon glyphicon-leaf"></span> 已批改</a></li>
							<li class="nav-divider"></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 右侧主体 -->
			<div class="col-md-10">
				<!-- 上半部分 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<font size="3"><span
							class="glyphicon glyphicon glyphicon-leaf"></span> 已批改 </font>
					</div>
				</div>
				<!-- 下半部分 -->
				<div class="panel panel-default">
					<!-- 头部 -->
					<div class="panel-heading" style="height: 55px">
						<div class="pull-left">
							<font size="4" style="line-height: 35px">已批改</font>
						</div>
						<div class="pull-right">
<%--							<button class="btn btn-primary" data-toggle="modal"--%>
<%--								data-target="#add-item">--%>
<%--								<span class="glyphicon glyphicon-plus"></span>新&nbsp;增--%>
<%--							</button>--%>
							<button class="btn btn-success"
								onclick="window.location.href='/pages/admin/manage-items2.jsp'">
								<span class="glyphicon glyphicon-refresh"></span>刷&nbsp;新
							</button>
						</div>
					</div>
					<!-- 主列表 -->
					<div class="panel-body">
						<table class="table table-striped" style="text-align: center">
							<tr>
								<td>考试ID</td>
								<td>试卷ID</td>
								<td>类型</td>
								<td>得分</td>
								<td>状态</td>
							</tr>
							<c:forEach var="item" items="${requestScope.finishAnswerList}">
								<tr>
									<td>${item.userId}</td>
									<td>${item.paperId}</td>
									<td>${item.startAnswerNum}</td>
									<td>${item.score}</td>
									<td>已批改</td>
								</tr>
							</c:forEach>
						</table>
						<center>第1页/共1页</center>
						<nav>
<%--						<ul class="pager">--%>
<%--							<c:if test="${finishAnswerList.currentPage>1 }">--%>
<%--								<li class="previous"><a--%>
<%--									href="${finishAnswerList.url}&currentPage=1">首页</a></li>--%>
<%--								<li class="previous"><a--%>
<%--									href="${finishAnswerList.url}&currentPage=${finishAnswerList.currentPage-1}">上一页</a></li>--%>
<%--							</c:if>--%>
<%--							<c:if test="${finishAnswerList.currentPage<finishAnswerList.totalPage}">--%>
<%--								<li class="next"><a--%>
<%--									href="${finishAnswerList.url }&currentPage=${finishAnswerList.totalPage}">尾页</a></li>--%>
<%--								<li class="next"><a--%>
<%--									href="${finishAnswerList.url }&currentPage=${finishAnswerList.currentPage+1}">下一页</a></li>--%>

<%--							</c:if>--%>
<%--						</ul>--%>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 操作成功弹框 -->
	<div id="operate-success" class="modal fade" aria-hidden="true"
		data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-title">
					<h1 class="text-center">操作成功</h1>
				</div>

				<!-- 主体 -->
				<div class="modal-body">
					<center>
						${operateSuccess} <br />
						<button class="btn btn-primary"
							onclick="window.location.href='/servlet/getAnsPageServlet}'"
							type="submit" data-dismiss="modal">确&nbsp;&nbsp;定</button>
					</center>
				</div>
			</div>
		</div>
	</div>

	<!-- 操作成功后提示 -->
	<c:if test="${not empty operateSuccess}">
		<script>
			$('#operate-success').modal("show");
		</script>
	</c:if>

	<!-- 操作失败弹框 -->
	<div id="operate-error" class="modal fade" aria-hidden="true"
		data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-title">
					<h1 class="text-center">操作失败</h1>
				</div>

				<!-- 主体 -->
				<div class="modal-body">
					<center>
						<h3>${operateError}</h3>
						<button class="btn btn-primary"
							onclick="window.location.href='/servlet/getFinishAnsServlet}'"
							type="submit" data-dismiss="modal">确&nbsp;&nbsp;定</button>
					</center>
				</div>
			</div>
		</div>
	</div>

	<!-- 操作失败后提示 -->
	<c:if test="${not empty operateError}">
		<script>
			$('#operate-error').modal("show");
		</script>
	</c:if>


</body>
</html>