<%@ page import="static java.lang.System.out" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600;700&display=swap" rel="stylesheet">

  <title>英语六级考试报考系统</title>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <style type="text/css">
    <jsp:directive.include file="css/templatemo-tiya-golf-club.css" />
  </style>
</head>
<body>


<!-- 网页头部 -->
<jsp:include page="/jspfragments/header.jsp" />



<%--<c:if test="${empty sessionScope.user and empty sessionScope.admin}">--%>
<%--<c:choose>--%>
<%--  <c:when test="${empty sessionScope.user and empty sessionScope.admin}">--%>

<%--  <center>--%>
<%--    <font size="50" style="width: 50%"><strong>如需购买，请先登录</strong></font><br />--%>
<%--    <button type="submit" class="btn btn-info navbar-btn"--%>
<%--            data-toggle="modal" data-target="#login" style="width: 50%">--%>
<%--&lt;%&ndash;  User myuser = ${sessionScope.user};&ndash;%&gt;--%>
<%--  <%--%>
<%--    System.out.println("进入sessionScope.user is empty 分支");--%>
<%--//    System.out.println(myuser);--%>
<%--  %>--%>
<%--      <span class="glyphicon glyphicon-log-in"></span>&nbsp;登&nbsp;&nbsp;录--%>
<%--    </button>--%>
<%--  </center>--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
<%--  </c:when>--%>
<%--  <c:otherwise>--%>

<%--<c:if test="${not empty sessionScope.user or not empty sessionScope.admin}">--%>

<p>User: ${sessionScope.user}</p>

<c:if test="${empty sessionScope.user}">
  <center>
    <font size="50" style="width: 50%"><strong>如需购买，请先登录</strong></font><br />
    <button type="submit" class="btn btn-info navbar-btn"
            data-toggle="modal" data-target="#login" style="width: 50%">
      <span class="glyphicon glyphicon-log-in"></span>&nbsp;登&nbsp;&nbsp;录
    </button>
  </center>
</c:if>


<c:if test="${not empty sessionScope.user}">
<%--  <%--%>
<%--      --%>
<%--    System.out.println(${sessionScope.user.userI});--%>
<%--  %>--%>
  <p>User: ${sessionScope.user.userId}</p>
  <section class="events-section section-bg section-padding" id="section_4">

  <div class="container">
    <div class="row">

      <div class="col-lg-12 col-12">
        <h2 class="mb-lg-3">题目列表</h2>
      </div>













      <div class="row custom-block mb-3">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
<%--            <h8 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">Listening</h8>--%>
            <strong  class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0" style="font-size: 25px;">Listening</strong >


            <strong class="text-white">1-25</strong>
          </div>
        </div>

        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="listening.jsp" class="events-title mb-3">听力题</a>

            <p class="mb-0">In this section, you will hear two long conversations. At the end of each conversation, you will hear four questions. Both the conversation and the questions will be spoken only once. After you hear a question, you must choose the best answer from the four choices marked A), B), C) and D). Then mark the corresponding letter on Answer Sheet 1 with a single line through the centre.</p>
            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">单项选择</p>
  <%
    System.out.println("进入sessionScope.user is not empty 分支");
  %>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">分数占比:</span>

                  <p class="mb-0">35%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="listening.jsp" class="btn custom-btn">开始练习</a>
              </div>
            </div>
          </div>
        </div>
      </div>


















      <div class="row custom-block custom-block-bg">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
            <strong  class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0" style="font-size: 25px;">Banked Cloze</strong >

            <strong class="text-white">26-35</strong>
          </div>
        </div>


        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="fillblank.jsp" class="events-title mb-3">选词填空</a>
<%--            <a href="listening.jsp" class="events-title mb-3">Group tournament activities</a>--%>
<%--                <a href="fillblank.jsp" class="events-title mb-3">Group tournament activities222</a>--%>
            <p class="mb-0">In this section, there is a passage with ten blanks. You are required to select one word for each blank from a list of choices given in a word bank following the passage. Read the passage through carefully before making your choices. Each choice in the bank is identified by a letter. Please mark the corresponding letter for each item on Answer Sheet 2 with a single line through the centre. You may not use any of the words in the bank more than once.</p>
            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">选词填空</p>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">分数占比:</span>

                  <p class="mb-0">5%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="fillblank.jsp" class="btn custom-btn">开始练习</a>
<%--                <a href="listening.jsp" class="btn custom-btn">开始练习</a>--%>
<%--                <a href="fillblank.jsp" class="btn custom-btn">开始练习</a>--%>
              </div>
            </div>
          </div>
        </div>
      </div>

















      <div class="row custom-block mb-3">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
<%--            <h4 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">Reading</h4>--%>
            <strong  class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0" style="font-size: 25px;">Reading</strong >


            <strong class="text-white">36-55</strong>
          </div>
        </div>

        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="event-detail.jsp" class="events-title mb-3">阅读题</a>

            <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">单项选择</p>
                  <%
                    System.out.println("进入sessionScope.user is not empty 分支");
                  %>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">分数占比:</span>

                  <p class="mb-0">30%</p>
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
            <strong  class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0" style="font-size: 20px;">Translation</strong >

<%--            <strong class="text-white">Translation</strong>--%>
          </div>
        </div>


        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="translation.jsp" class="events-title mb-3">翻译题</a>
              <%--            <a href="listening.jsp" class="events-title mb-3">Group tournament activities</a>--%>
              <%--                <a href="fillblank.jsp" class="events-title mb-3">Group tournament activities222</a>--%>
            <p class="mb-0">For this part, you are allowed 30 minutes to translate a passage from Chinese into English. You should write your answer on Answer Sheet 2.</p>

            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">主观题</p>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">正确率:</span>

                  <p class="mb-0">15%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="translation.jsp" class="btn custom-btn">开始练习</a>
                  <%--                <a href="listening.jsp" class="btn custom-btn">开始练习</a>--%>
                  <%--                <a href="fillblank.jsp" class="btn custom-btn">开始练习</a>--%>
              </div>
            </div>
          </div>
        </div>
      </div>













      <div class="row custom-block mb-3">
        <div class="col-lg-2 col-md-4 col-12 order-2 order-md-0 order-lg-0">
          <div class="custom-block-date-wrap d-flex d-lg-block d-md-block align-items-center mt-3 mt-lg-0 mt-md-0">
              <%--            <h4 class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0">Reading</h4>--%>
             <strong  class="custom-block-date mb-lg-1 mb-0 me-3 me-lg-0 me-md-0" style="font-size: 20px;">Writing</strong >


            <strong class="text-white">36-55</strong>
          </div>
        </div>

        <div class="col-lg-6 col-12 order-3 order-lg-0">
          <div class="custom-block-info mt-2 mt-lg-0">
            <a href="writing.jsp" class="events-title mb-3">写作题</a>

            <p class="mb-0">For this part, you are allowed 30 minutes to write an essay that begins with the sentence “Today increasing importance is being attached to cultivating college students’ team spirit.” You can make statements, give reasons, or cite examples to develop your essay. You should write at least 150 words but no more than 200 words.</p>

            <div class="d-flex flex-wrap border-top mt-4 pt-3">

              <div class="mb-4 mb-lg-0">
                <div class="d-flex flex-wrap align-items-center mb-1">
                  <span class="custom-block-span">类型:</span>

                  <p class="mb-0">主观题</p>
                  <%
                    System.out.println("进入sessionScope.user is not empty 分支");
                  %>
                </div>

                <div class="d-flex flex-wrap align-items-center">
                  <span class="custom-block-span">分数占比:</span>

                  <p class="mb-0">15%</p>
                </div>
              </div>

              <div class="d-flex align-items-center ms-lg-auto">
                <a href="writing.jsp" class="btn custom-btn">开始练习</a>
              </div>
            </div>
          </div>
        </div>
      </div>




    </div>
  </div>

</section>

</c:if>
<%--  </c:otherwise>--%>

<%--</c:choose>--%>
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
