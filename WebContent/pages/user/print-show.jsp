<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600;700&display=swap" rel="stylesheet">

    <title>英语六级考试报考系统</title>
    <style type="text/css">
        <jsp:directive.include file="/css/templatemo-tiya-golf-club.css" />
        <jsp:directive.include file="/css/bootstrap-icons.css" />
    </style>
</head>
<body>
<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />
<section class="membership-section section-padding" id="section_3">
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-6 text-center">
                <h2><span> 准考证 </span> </h2>
            </div>

            <br/> <br/>
            <div class="col-md-3">
            </div>
            <div class="col-lg-6 col-12 mb-3 mb-lg-0">
                <div class="table-responsive">
                    <table class="table text-center">

                        <tbody>
                        <tr>
                            <th scope="row" class="text-start">姓名</th>
                            <td>
                                ${sessionScope.registration.username}
                            </td>
                        </tr>

                        <tr>
                            <th scope="row" class="text-start">准考证号</th>
                            <td>
                                190
                            </td>
                        </tr>

                        <tr>
                            <th scope="row" class="text-start">考试时间</th>
                            <td>
                                50
                            </td>

                        </tr>

                        <tr>
                            <th scope="row" class="text-start">考试地点</th>
                            <td>
                                50
                            </td>

                        </tr>
                        <tr>
                            <th scope="row" class="text-start">考场</th>
                            <td>
                                450
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-lg-12 col-6 text-center">
                <h2><span> 准考证 </span> </h2>
            </div>

            <br/> <br/>

        </div>
    </div>
</section>

<div style="background: url(${pageContext.request.contextPath}/WebContent/images/index/background3.png)">
    <div class="container">
        <div class="col-xs-4 "></div>
        <div class="col-xs-4 " align="center">
            <br /> <font size="20"><strong>CET-6 System</strong></font>
            <br /> <font size="5"><strong>英语六级考试报考系统</strong></font><br />
            <p>2023 软件工程大作业</p>
            <br />
        </div>
    </div>
</div>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#81B29A" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/click-scroll.js"></script>
<script src="../js/animated-headline.js"></script>
<script src="../js/modernizr.js"></script>
<script src="../js/custom.js"></script>

</body>
</html>
