<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>英语六级考试报考系统</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <style>
        #item img {
            width: 30px;
        }
    </style>

</head>
<body>

<!-- 无regPage且没有操作失败,进入时，重新请求getRegPagesServlet -->
<c:if test="${empty requestScope.RegsList}">
    <script>
        window.location.href = '${pageContext.request.contextPath}/servlet/getRegPageServlet';
    </script>
</c:if>

<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />
<jsp:include page="pay-apply.jsp" />
<jsp:include page="print-apply.jsp" />

<!-- 网页正文 -->
<br /><br /><br /><br /><br />

<div class="container">
    <div class="row">
        <!-- 左侧菜单栏 -->
        <div class="col-md-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <ul class="nav nav-pills nav-stacked">
                        <li class="disabled"><a href="#"><font size="3"
                                                               style="font-weight: bold;"><span
                                class="glyphicon glyphicon-th-large"></span>用户中心</font></a></li>
                    </ul>
                </div>
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a
                                href="${pageContext.request.contextPath}/pages/user/modify-info.jsp">
                            <span class="glyphicon glyphicon-user"></span> 修改信息
                        </a></li>
                        <li><a
                                href="${pageContext.request.contextPath}/pages/user/modify-password.jsp"><span
                                class="glyphicon glyphicon-lock"></span> 修改密码</a></li>
                        <li class="nav-divider">
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/pages/user/registration-his.jsp">
                                <span class="glyphicon glyphicon-list-alt"></span> 报名情况
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 右侧主体 -->
        <div class="col-md-10">
            <!-- 上半部分 -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <font size="3"> <span class="glyphicon glyphicon-list-alt"></span>
                        当前用户报名情况
                    </font>
                    <div class="pull-right">
                        <button type="submit" class="btn btn-success navbar-btn"
                                    data-toggle="modal" data-target="#payapply" href="">缴费
                        </button>

                        <button type="submit" class="btn btn-success navbar-btn"
                                    data-toggle="modal" data-target="#printapply" href="">打印准考证
                        </button>
                    </div>
                </div>
            </div>
            <!-- 下半部分 -->
            <div class="panel panel-default">
                <div class="panel-heading" style="height: 55px">
                    <div class="pull-left">
                        <font size="4" style="line-height: 35px"><strong>当前用户报名情况</strong></font>
                    </div>
                    <div class="pull-right">
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped" style="text-align: center">
                        <tr>
                            <td>ID</td>
                            <td>姓名</td>
                            <td>身份证号</td>
                            <td>考试时间</td>
                            <td>考试地点</td>
                            <td>准考证号</td>
                            <td>缴费情况</td>
                        </tr>

                        <c:forEach var="reg" items="${requestScope.RegsList}">
                            <tr>
                                <td>${reg.regid}</td>
                                <td>${reg.username}</td>
                                <td>${reg.identificationid}</td>
                                <td>${reg.examtime}</td>
                                <td>
                                    <script>
                                        var identificationId = "${reg.examposition}";
                                        var output = "";
                                        if (identificationId === "0") {
                                            output = "南开大学八里台校区";
                                        } else if (identificationId === "1") {
                                            output = "南开大学津南校区";
                                        } else if (identificationId === "2") {
                                            output = "天津大学卫津路校区";
                                        } else if (identificationId === "3") {
                                            output = "天津大学北洋园校区";
                                        } else {
                                            output = "其他";
                                        }
                                        document.write(output);
                                    </script>
                                </td>

                                <td>${reg.examid}</td>
                                <td>
                                    <script>
                                        var identificationId = "${reg.paymentstatus}";
                                        var outputElement = "";
                                        if (identificationId == 0) {
                                            outputElement = "未付款";
                                        } else if (identificationId == 1) {
                                            outputElement = "已付款";
                                        } else {
                                            outputElement = "其他";
                                        }
                                        document.write(outputElement);
                                    </script>
                                </td>


                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>