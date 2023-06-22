<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600;700&display=swap" rel="stylesheet">

  <title>英语六级考试报考系统</title>
  <style type="text/css">
    <jsp:directive.include file="css/templatemo-tiya-golf-club.css" />
  </style>
</head>
<body>
<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />

<section class="events-section section-bg section-padding" id="section_4">
  <div class="container">
    <div class="row">

      <div class="col-lg-12 col-12">
        <h2 class="mb-lg-3">题目列表</h2>
      </div>

      <div class="row custom-block mb-3">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
            <h6 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">24</h6>

            <strong class="text-white">Feb 2020</strong>
          </div>
        </div>

        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="event-detail.jsp" class="events-title mb-3">A casual day</a>

            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">阅读题</p>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">正确率:</span>

                  <p class="mb-0">70%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="event-detail.jsp" class="btn custom-btn">开始练习</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row custom-block custom-block-bg">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
            <h6 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">28</h6>

            <strong class="text-white">Feb 2021</strong>
          </div>
        </div>


        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="event-detail3.jsp" class="events-title mb-3">Group tournament activities</a>

            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">完形填空</p>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">正确率:</span>

                  <p class="mb-0">20%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="event-detail3.jsp" class="btn custom-btn">开始练习</a>
<%--                <a href="baidu2.html" class="btn custom-btn">开始练习</a>--%>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
<div
        style="background: url(${pageContext.request.contextPath}/images/index/background3.png)">
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
