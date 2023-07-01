<!-- 缴费界面 230625修改 ggg -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>安全支付平台</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/item.js"></script>
    <style>
        #item img {
            width: 550px;
        }
    </style>

</head>
<body>

<c:if test="${empty sessionScope.registration}">
    <%
        session.setAttribute("message", "尚未报名");
    %>
    <c:redirect url="${pageContext.request.contextPath}/message.jsp"/>
</c:if>

<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />

<!-- 网页正文 -->
<br />
<%
    request.setAttribute("forwardUrl", "/index.jsp"); //map
%>
<div id="left-info" class="container">
    <div class="row">
        <div class="col-md-1">
        </div>
        <!-- 左侧提示 -->
        <div class="col-md-4">
            <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                    <tr>
                        <th style="width: 33%;">报名信息</th><th style="width: 33%;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row" class="text-start">姓名</th>
                        <td>
                            ${sessionScope.registration.username}
                        </td>
                    </tr>

                    <tr>
                        <th scope="row" class="text-start">身份证号</th>
                        <td>
                            ${sessionScope.registration.identificationid}
                        </td>


                    </tr>

                    <tr>
                        <th scope="row" class="text-start">报名考点</th>
                        <td>
                            <div id="output">
                            <script>
                                var identificationId = "${sessionScope.registration.examposition}";
                                var outputElement = document.getElementById("output");
                                if (identificationId === "0") {
                                    outputElement.innerHTML = "南开大学八里台校区";
                                } else if(identificationId === "1") {
                                    outputElement.innerHTML = "南开大学津南校区";
                                } else if(identificationId === "2") {
                                    outputElement.innerHTML = "天津大学卫津路校区";
                                } else if(identificationId === "3") {
                                    outputElement.innerHTML = "天津大学北洋园校区";
                                }else {
                                    outputElement.innerHTML = "其他";
                                }
                            </script>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th scope="row" class="text-start">报考时间</th>
                        <td>
                            ${sessionScope.registration.examtime}
                        </td>


                    </tr>

                    <tr>
                        <th scope="row" class="text-start">电话</th>
                        <td>
                            ${sessionScope.registration.tel}
                        </td>

                    </tr>

                    <tr>
                        <th scope="row" class="text-start">缴纳费用</th>
                        <td>
                            30
                        </td>

                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-md-1">
        </div>
        <!-- 右侧主体 -->
        <div class="col-md-4">
            <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span style="font-size: large; ">
                        <span class="glyphicon glyphicon glyphicon-leaf"></span>  支付选项 (请确认报名信息无误后付款) </span>
                </div>
                <div class="panel-body">
                    <div class="pay" style="display: flex; justify-content: center; align-items: center;">
                        <img id="wechatImage" src="${pageContext.request.contextPath}/images/payment/Wechat.png" style="width: 150px; height: 160px;">
                    </div>
                    <div class="paychange" style="display: flex; justify-content: center; align-items: center;">
                        <span style="font-size:large; "><a href="#" id="imageLink1" onclick="changeImage('image1')">微信支付</a></span>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <span style="font-size:large; "><a href="#" id="imageLink2" onclick="changeImage('image2')">支付宝支付</a></span>
                        <script>
                            function changeImage(imageName) {
                                var mainImage = document.getElementById("wechatImage");
                                if (imageName === "image1") {
                                    mainImage.src = "${pageContext.request.contextPath}/images/payment/Wechat.png";
                                } else if (imageName === "image2") {
                                    mainImage.src = "${pageContext.request.contextPath}/images/payment/paypaid.png";
                                }}
                        </script>
                    </div>
                    <form action="${pageContext.request.contextPath}/servlet/paymentoneServlet?forwardUrl=${forwardUrl}" method="post">
                        <div class="form-group has-feedback">
                            <button type="submit" class="btn btn-primary" style="width: 100%">支付成功</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 支付失败弹框 -->
<div id="pay-fail" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">支付失败，请重新支付</h1>
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

<!-- 支付失败之后返回，重新打开模态框 -->
<c:if test="${not empty requestScope.paymentError}">
    <script>
        $('#pay-fail').modal("show");
    </script>
</c:if>

<!-- 支付成功弹框 -->
<div id="pay-success" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">支付成功</h1>
            </div>

            <!-- 主体 -->
            <div class="modal-body">
                <div class="text-right">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">确  定</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 支付成功后提示 -->
<c:if test="${not empty requestScope.paymentSuccess}">
    <script>
        $('#pay-success').modal("show");
    </script>
</c:if>
</body>
</html>