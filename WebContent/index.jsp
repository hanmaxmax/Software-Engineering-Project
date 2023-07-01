<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style-starter.css"/>
	<link href="css/index.css" rel="stylesheet">

    <title>英语六级考试报考系统</title>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <style type="text/css">
        <jsp:directive.include file="/css/index.css" />

        .services .service-item:hover .icon img {
            margin-top: 20px;
        }

        .services .service-item {
            position: relative;
            margin-top: 95px;
        }

        .services .service-item .icon {
            width: 190px;
            height: 190px;
            display: inline-block;
            text-align: center;
            line-height: 190px;
            background-color: #4d5679;
            border-radius: 50%;
            position: absolute;
            right: 0;
            top: -95px;
        }

        .services .service-item .icon img {
            max-width: 86px;
            transition: all .2s;
            margin-top: 50px;

        }

        .services .service-item .main-content {
            border-radius: 25px;
            padding: 80px 30px 50px 30px;
            background-color: #e7e7e7;
            margin-bottom: 30px;
            margin-right: 80px;
            transition: all .4s;
        }

        .services .service-item h4 {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 15px;
            line-height: 30px;
            transition: all .4s;
        }

        .services .service-item p {
            color: #4a4a4a;
            margin-bottom: 25px;
        }

        /*main区域居中*/
        .main {
            text-align: center;
            background-color: #fff;
            border-radius: 20px;
            width: 1000px;
            height: 400px;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

        .items {
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }

        .items img {
            width: 150px;
        }

        /*去除轮播两边阴影*/
        #cl #cr {
            background-image: none;
        }
    </style>
</head>


<body>
<!-- 利用forwardUrl来确定(注册之后)返回的url -->
<%
    request.setAttribute("forwardUrl", "/index.jsp");
%>

<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp"/>

<!-- 网页正文 -->
<section class="hero-section d-flex justify-content-center align-items-center" id="section_1">

    <div class="section-overlay"></div>

    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320">
        <path fill="#3D405B" fill-opacity="1"
              d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,0L1405.7,0C1371.4,0,1303,0,1234,0C1165.7,0,1097,0,1029,0C960,0,891,0,823,0C754.3,0,686,0,617,0C548.6,0,480,0,411,0C342.9,0,274,0,206,0C137.1,0,69,0,34,0L0,0Z"></path>
    </svg>

    <div class="container">
        <div class="row">

            <div class="cd-headline rotate-1 text-white mb-4 pb-2">
                <h2 class="text-white">欢迎，</h2>

                <h1 class="cd-headline rotate-1 text-white mb-4 pb-2">
                    <span>CET-6 考试</span>
                    <span class="cd-words-wrapper">
                                    <b class="is-visible">科学</b>
                                    <b>客观</b>
                                    <b>准确</b>
									<b>公正</b>
                                </span>
                </h1>

                <div class="custom-btn-group">
                    <a href="#section_2" class="btn custom-btn smoothscroll me-3">快速开始</a>
                    <a href="#section_3" class="link smoothscroll">©2023 软工大作业</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 轮播图  -->
<div style="margin-top:-400px; background: url(${pageContext.request.contextPath}/images/index/background1.png)">
    <!-- background-repeat:no-repeat  -->
    <div id="carousel-example-generic" class="main carousel slide "
         data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0"
                class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img
                        src="${pageContext.request.contextPath}/images/home/carousel1.png">
            </div>
            <div class="item">
                <img
                        src="${pageContext.request.contextPath}/images/home/carousel2.png">
            </div>
        </div>

        <!-- Controls -->
        <a class="carousel-control left" id="cl"
           href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

        </a> <a class="carousel-control right" id="cr"
                href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </a>
    </div>
</div>


<jsp:include page="/jspfragments/apply.jsp"/>
<!-- 功能按钮 -->
<br/><br/>
<div padding-top="1000px">
    <div class="services section" id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon" margin-top="200px">
                            <img src="assets/images/service-01.png" padding-top="200px" margin-top="200px"
                                 alt="online degrees">
                        </div>
                        <div class="main-content">
                            <c:if test="${empty sessionScope.user}">
                                <a href="#" onclick="showAlert();"><h4>进入报名</h4></a>
                                <script>
                                    function showAlert() {
                                        alert("请先登录学生用户");
                                    }
                                </script>
                            </c:if>
                            <c:if test="${not empty sessionScope.user}">
                                <a type="submit" data-toggle="modal" data-target="#apply" href=""><h4>进入报名</h4></a>
                            </c:if>
                            <p>报名CET-6考试</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon">
                            <img src="assets/images/service-02.png" alt="short courses">
                        </div>
                        <div class="main-content">
                            <a href="${pageContext.request.contextPath}/../Exam/questions.jsp"><h4>在线考试</h4></a>
                            <p>查看过往CET-6考试原题及练习题目</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="service-item">
                        <div class="icon">
                            <img src="assets/images/service-03.png" alt="web experts">
                        </div>
                        <div class="main-content">
                            <c:if test="${empty sessionScope.user}">
                                <a href="#" onclick="showAlert();"><h4>成绩查询</h4></a>
                                <script>
                                    function showAlert() {
                                        alert("请先登录学生用户");
                                    }
                                </script>
                            </c:if>
                            <c:if test="${not empty sessionScope.user}">
                                <a href="${pageContext.request.contextPath}/../pages/user/result.jsp"><h4>成绩查询</h4></a>
                            </c:if>
                            <p>查询过往考试成绩</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div style="background: url(${pageContext.request.contextPath}/images/index/background3.png)">
    <div class="container">
        <div class="col-xs-4 "></div>
        <div class="col-xs-4 " align="center">
            <br/> <font size="20"><strong>CET-6 System</strong></font>
            <br/> <font size="5"><strong>英语六级考试报考系统</strong></font><br/>
            <p>2023 软件工程大作业</p>
            <br/>
        </div>
    </div>
</div>


<!-- 页脚 -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/click-scroll.js"></script>
<script src="js/animated-headline.js"></script>
<script src="js/modernizr.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
<!DOCTYPE html>
