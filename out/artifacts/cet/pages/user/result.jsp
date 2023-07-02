<%@ page import="com.cet.domain.Score" %>
<%@ page import="com.cet.service.IStudentService" %>
<%@ page import="com.cet.service.impl.StudentRegisterImpl" %>
<%@ page import="com.cet.domain.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600;700&display=swap" rel="stylesheet">

  <title>英语六级考试报考系统</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <style type="text/css">
    <jsp:directive.include file="/assets/css/templatemo-tiya-golf-club.css" />
    <jsp:directive.include file="/assets/css/bootstrap-icons.css" />
  </style>
  <jsp:useBean id="getScoreServlet" class="com.cet.web.controller.GetScoreServlet" />

</head>

<body>
<%
  request.setAttribute("forwardUrl", "/result.jsp");
%>
<!-- 请求getRegPagesServlet -->
<c:if test="${empty requestScope.ScoreItem}">
  <%
      IStudentService studentService = new StudentRegisterImpl();
      User user = (User) request.getSession().getAttribute("user");
      int userid = user.getUserId();
      Score score = studentService.getscore(user.getUserId());
      request.setAttribute("ScoreItem", score);
      //System.out.println(score);
      if(score==null){
        request.setAttribute("ScoreError", "尚未有考试记录！！");
      } else if(score.getTransition().equals("-1.0")||score.getComposition().equals("-1.0")){
        request.setAttribute("ScoreNotEnding", "尚未出分！！！");
      } else {
        double total=Double.parseDouble(score.getListening())+Double.parseDouble(score.getReading())+Double.parseDouble(score.getTransition())+Double.parseDouble(score.getComposition());
        String stringtotal = Double.toString(total);
        request.setAttribute("ScoreTotal", stringtotal);
      }

  %>
</c:if>

<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />


<c:if test="${not empty requestScope.ScoreError}">
  <br/><br/><br/><br/>
  <div class="col-lg-12 col-12 text-center mx-auto mb-lg-5 mb-4">
    <h2><span>尚未有考试记录</span></h2>
  </div>
</c:if>

<c:if test="${not empty requestScope.ScoreNotEnding}">
  <br/><br/><br/><br/>
  <div class="col-lg-12 col-12 text-center mx-auto mb-lg-5 mb-4">
    <h2><span>尚未出分</span></h2>
  </div>
</c:if>

<c:if test="${empty requestScope.ScoreError and empty requestScope.ScoreNotEnding}">
<section class="membership-section section-padding" id="section_3">
  <div class="container">
    <div class="row">

      <div class="col-lg-12 col-12 text-center mx-auto mb-lg-5 mb-4">
        <h2><span>成绩查询</span></h2>
      </div>
<br/>
      <div class="col-lg-6 col-12 mb-3 mb-lg-0">

        <div class="table-responsive">
          <table class="table text-center">
            <thead>
            <tr>
              <th style="width: 33%;">题型</th>

              <th style="width: 33%;">平均得分</th>

              <th style="width: 33%;">您最近一次考试得分为</th>
            </tr>
            </thead>

            <tbody>
            <tr>
              <th scope="row" class="text-start">听力题</th>

              <td>
                160.0
              </td>

              <td>
                ${requestScope.ScoreItem.listening}
              </td>

            </tr>

            <tr>
              <th scope="row" class="text-start">阅读题</th>

              <td>
                140.0
              </td>

              <td>
                ${requestScope.ScoreItem.reading}
              </td>

            </tr>

            <tr>
              <th scope="row" class="text-start">翻译题</th>

              <td>
                50.0
              </td>

              <td>
                ${requestScope.ScoreItem.transition}
              </td>

            </tr>

            <tr>
              <th scope="row" class="text-start">作文题</th>

              <td>
                50.0
              </td>

              <td>
                ${requestScope.ScoreItem.composition}
              </td>
            </tr>
            <tr>
              <th scope="row" class="text-start">总分</th>

              <td>
                400
              </td>

              <td>
                  ${requestScope.ScoreTotal}
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="col-lg-6 col-12 order-3 order-lg-0" align="center">
        <div class="custom-block-info mt-2 mt-lg-0">
          <h4 >您的总分为</h4>
          <h1 fontcolor="blue">${requestScope.ScoreTotal}</h1>


          </div>
        </div>
      </div>
  </div>
  </div>
</section>
</c:if>

<div
        style="background: url(${pageContext.request.contextPath}/WebContent/images/index/background3.png)">
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
