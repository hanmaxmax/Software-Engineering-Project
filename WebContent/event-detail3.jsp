<%@ page import="java.io.FileReader" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//    String json = (String)pageContext.getAttribute("dataJson");
//    pageContext.setAttribute("parsedJSON", org.apache.commons.json.JSON.parse(json));
//    System.out.println("json!!!!! = "+json);
//                        StringBuilder stringBuilder = new StringBuilder();
//                        int numRead;
//                        while((numRead = fileReader.read(buffer)))
<%--    String filePath = "D:\\MyStudy\\6th\\software\\final-work\\cafe2-j2ee-master -with-web\\WebContent\\applicant.json";  // 替换为实际的 JSON 文件路径--%>
<%--    FileReader fileReader = new FileReader(filePath);--%>
<%--    char[] buffer = new char[1024];--%>
<%--    StringBuilder stringBuilder = new StringBuilder();--%>
<%--    int numRead;--%>
<%--    while ((numRead = fileReader.read(buffer)) != -1) {--%>
<%--        stringBuilder.append(buffer, 0, numRead);--%>
<%--    }--%>
<%--    String jsonContent = stringBuilder.substring(1).substring(1).substring(1).toString();--%>
<%--    System.out.println("jsonContent!!!"+stringBuilder.substring(1).substring(1).substring(1));--%>
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online CET6 Exam System</title>
    <script>
        // 在 JavaScript 中处理和展示 JSON 内容
        var jsonContent = <%= jsonContent %>;
        // 在此处可以使用 jsonContent 对象进行相应的操作和展示
        console.log(jsonContent);  // 示例：在控制台打印 JSON 内容
    </script>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/index.css" rel="stylesheet">


</head>

<body>

<main>
    <h1>显示 JSON 文件内容示例</h1>

    <p>从 JSON 文件中读取到的内容：</p>
    <pre><%= jsonContent %></pre>
    <!--
                <nav class="navbar navbar-expand-lg">
                    <div class="container">
                        <a class="navbar-brand d-flex align-items-center" href="index.html">
                            <img src="images/logo.png" class="navbar-brand-image img-fluid" alt="Tiya Golf Club">
                            <span class="navbar-brand-text">
                                Tiya
                                <small>Golf Club</small>
                            </span>
                        </a>

                        <div class="d-lg-none ms-auto me-3">
                            <a class="btn custom-btn custom-border-btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">Member Login</a>
                        </div>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ms-lg-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#section_1">Home</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#section_2">About</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#section_3">Membership</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#section_4">Events</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.html#section_5">Contact Us</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

                                    <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                        <li><a class="dropdown-item" href="event-listing.html">Event Listing</a></li>

                                        <li><a class="dropdown-item active" href="event-detail.jsp">Event Detail</a></li>
                                    </ul>
                                </li>
                            </ul>

                            <div class="d-none d-lg-block ms-lg-3">
                                <a class="btn custom-btn custom-border-btn" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">Member Login</a>
                            </div>
                        </div>
                    </div>
                </nav>
    -->

    <!--
                <div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasExampleLabel">Member Login</h5>

                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body d-flex flex-column">
                        <form class="custom-form member-login-form" action="#" method="post" role="form">

                            <div class="member-login-form-body">
                                <div class="mb-4">
                                    <label class="form-label mb-2" for="member-login-number">Membership No.</label>

                                    <input type="text" name="member-login-number" id="member-login-number" class="form-control" placeholder="11002560" required>
                                </div>

                                <div class="mb-4">
                                    <label class="form-label mb-2" for="member-login-password">Password</label>

                                    <input type="password" name="member-login-password" id="member-login-password" pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="Password" required="">
                                </div>

                                <div class="form-check mb-4">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">

                                    <label class="form-check-label" for="flexCheckDefault">
                                        Remember me
                                    </label>
                                </div>

                                <div class="col-lg-5 col-md-7 col-8 mx-auto">
                                    <button type="submit" class="form-control">Login</button>
                                </div>

                                <div class="text-center my-4">
                                    <a href="#">Forgotten password?</a>
                                </div>
                            </div>
                        </form>

                        <div class="mt-auto mb-5">
                            <p>
                                <strong class="text-white me-3">Any Questions?</strong>

                                <a href="tel: 010-020-0340" class="contact-link">
                                    010-020-0340
                                </a>
                            </p>
                        </div>
                    </div>

                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#3D405B" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
                </div>
    -->


    <section class="hero-section hero-50 d-flex justify-content-center align-items-center" id="section_1">

        <div class="section-overlay"></div>

        <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#3D405B" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>

        <!--
                        <div class="container">
                            <div class="row">

                                <div class="col-lg-6 col-12">

                                    <h1 class="text-white mb-4 pb-2">Event Detail.</h1>

                                    <a href="#section_2" class="btn custom-btn smoothscroll me-3">Learn more</a>
                                </div>

                            </div>
                        </div>
        -->

        <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#ffffff" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>
    </section>


    <section class="events-section events-detail-section section-padding" id="section_2">
        <div class="container">
            <div class="row">

                <div class="col-lg-6 col-md-8 col-12 mx-auto">
                    <h2 class="mb-lg-5 mb-4">Passage One </h2>
                    <pre class="mb-lg-5 mb-4"><em>Questions 46 to 50 are based on the following passage</em></pre>
                    <!--
                      <div class="custom-block-image-wrap">
                          <img src="images/professional-golf-player.jpg" class="custom-block-image img-fluid" alt="">
                      </div>
-->
                    <c:import var="dataJson" url="/applicant.json"/>
                    <%
                        String json = (String)pageContext.getAttribute("dataJson");
                        pageContext.setAttribute("parsedJSON", org.apache.commons.json.JSON.parse(json));
                        System.out.println("json!!!!! = "+json);
                        JSONObject jsonObject = JSONObject.fromObject(json);
                        Map map = (Map)JSONObject.toBean(jsonObject, Map.class);
//                        StringBuilder stringBuilder = new StringBuilder();
//                        int numRead;
//                        while((numRead = fileReader.read(buffer)))
//                        String filePath = "/path/to/json/file.json";  // 替换为实际的 JSON 文件路径
//                        FileReader fileReader = new FileReader(filePath);
//                        char[] buffer = new char[1024];
//                        StringBuilder stringBuilder = new StringBuilder();
//                        int numRead;
//                        while ((numRead = fileReader.read(buffer)) != -1) {
//                            stringBuilder.append(buffer, 0, numRead);
//                        }
//                        String jsonContent = stringBuilder.toString();
                    %>
                    <div class="custom-block-info">
                        <h3 class="mb-3">&nbsp;</h3>
                        <style>
                            p{width:400px; text-indent:2em}
                        </style>
                        <p>Many people asso<span style="font-size: 18px">ciate their self-worth with their work. The more successful their career,</span> the better they feel about themselves. Work-related self-esteem is therefore a worthy ideal to pursue with vigor, right? Well, not always. According to recent research, in which psychologists interviewed 370 full-time workers over a period of three weeks, the reality is a little more complicated. And it involves negative as well as positive consequences.&nbsp;</p>
                        <p>It's natural to be drawn towards pleasure and to step away from pain. In the workplace, if that pleasure comes from a triumph which swells our self-respect, people will try to repeat the accomplishment. But repeating that accomplishment is often not realistic, which can lead to severe negative emotional consequences when it doesn't reoccur. This form of motivation is widely regarded as a negative type of motivation. It can hinder other more positive motivation types, such as completing a task purely because it's fulfilling or enjoyable. </p>
                        <p>What consumes the employee instead is a pressing need to feel mighty and sure of themselves. They then take on only tasks and objectives which serve that ego-driven need. As a result, to avoid feelings of shame and worthlessness associated with failure, they extend themselves to such a degree that there's a subsequent adverse effect on their well-being. This internal pressure to succeed at all costs demands a lot of effort. It depletes their energy, culminating in disproportionate levels of damaging sentiment.</p>
                        <p>What consumes the employee instead is a pressing need to feel mighty and sure of themselves. They then take on only tasks and objectives which serve that ego-driven need. As a result, to avoid feelings of shame and worthlessness associated with failure, they extend themselves to such a degree that there's a subsequent adverse effect on their well-being. This internal pressure to succeed at all costs demands a lot of effort. It depletes their energy, culminating in disproportionate levels of damaging sentiment.</p>
                        <p>Those negative emotions mount into heightened anxiety, impacting their ability to make the most of their personal life. Their desire to avoid feeling inferior ends up making them feel inferior when it comes to their diminished capacity for friendship and leisure. They end up dissatisfied both at work and outside of it.</p>
                        <p> But thankfully, for those people compelled almost entirely by this specific form of motivation, the news isn't all bad, or bad at all. The study also discovered several positive outcomes that can actually outweigh the harmful ones. Though these types of employees are motivated by the desire to avoid negative consequences, they are also motivated by the excitement of pursuing emotional rewards. This excitement makes pursuing goals enjoyable and stimulates pleasure and pride that would result from success. An effect of the positive motivation is that it neutralizes the existence of negative motivation. </p>
                        <p>Sure, it affects people's personal lives to what could be deemed an unhealthy extent, because leisure activities are often seen as a part of life that must be sacrificed to manage work and family demands. However, the way people feel about their work has less to do with whether they're motivated by the preservation of self-esteem but more with the fact that they're simply motivated. </p>
                        <p>
                            <style>
                                p{width:400px; text-indent:0em}
                            </style>
                        </p>
                        <p>		      46. What does the author say about the pursuit of work-related self-esteem?
                            <br>

                            A) It may result in negative motivation.
                            <br>
                            B) It contributes to one's accomplishments.
                            <br>
                            C) It can increase one's vigor as one keeps trying.
                            <br>
                            D) It costs too much emotionally and psychologically.
                        </p>
                        <p>
                            <style>
                                p{width:400px; text-indent:0em}
                            </style>
                        </p>
                        <p>		      47. What do employees tend to do in pursuing work-related self-esteem?
                            <br>

                            A) Take on tasks well beyond their actual capabilities.
                            <br>
                            B) Strive to succeed at the expense of their well-being.
                            <br>
                            C) Resort to all means regardless of the consequences.
                            <br>
                            D) Exaggerate their sense of shame and worthlessness.
                        </p>

                        <p>
                            <style>
                                p{width:400px; text-indent:0em}
                            </style>
                        </p>
                        <p>		      48. What do we learn about people over-concerned with work-related self-esteem?
                            <br>

                            A) They may often feel inferior to their colleagues.
                            <br>
                            B) They cannot enjoy their personal life to the full.
                            <br>
                            C) They are never satisfied with their achievements.
                            <br>
                            D) They have their own view of friendship and leisure.
                        </p>

                        <p>
                            <style>
                                p{width:400px; text-indent:0em}
                            </style>
                        </p>
                        <p>		      49. What is the good news we learn from the recent research?
                            <br>

                            A) The pursuit of goals may turn out to be enjoyable and pleasant.
                            <br>
                            B) The emotional rewards from goal pursuit are worth the pains taken.
                            <br>
                            C) The negative consequences of goal pursuit can mostly be avoided.
                            <br>
                            D) The goal of swelling self-esteem can be achieved if one keeps trying.
                        </p>

                        <p>
                            <style>
                                p{width:400px; text-indent:0em}
                            </style>
                        </p>
                        <p>		      50. What can we infer from the last paragraph?
                            <br>

                            A) Workers have to make sacrifices to preserve self-esteem.
                            <br>
                            B) Self-esteem swells when workers are strongly motivated.
                            <br>
                            C) Pursuit of goals affects people's personal lives to an unhealthy extent.
                            <br>
                            D) People feel positive about their work as long as they are motivated.
                        </p>
                        <p>&nbsp;</p>
                        <!--<p>Tiya is 100% free CSS template provided by TemplateMo website. Plese tell your friends about our website. Thank you for visiting.</p>-->

                        <%@ page contentType="text/html;charset=gb2312" %>
                        <script language="javascript">
                            function on_submit()  // 验证数据的合法性
                            {
                                //     if(form1.username.value=="")
                                //     {
                                //         alert("用户名不能为空，请输入用户名!");
                                //         form1.username.focus();
                                //         return false;
                                //     }
                                //     if(form1.userpassword.value=="")
                                //     {
                                //         alert("用户密码不能为空，请输入密码!");
                                //         form1.userpassword.focus();
                                //         return false;
                                //     }
                                //     if(form1.reuserpassword.value=="")
                                //     {
                                //         alert("用户确认密码不能为空，请输入密码!");
                                //         form1.reuserpassword.focus();
                                //         return false;
                                //     }
                                //     if(form1.userpassword.value!=form1.reuserpassword.value)
                                //     {
                                //         alert("密码与确认密码不同");
                                //         form1.userpassword.focus();
                                //         return false;
                                //     }
                                //     if(form1.email.value.length!=0)
                                //     {
                                //         for(i=0;i<form1.email.value.length;i++)
                                //         {
                                //             if(form1.email.value.charAt(i)=='@')
                                //             {
                                //                 break;
                                //             }
                                //         }
                                //         if(i==form1.email.value.length)
                                //         {
                                //             alert("非法E-mail地址!");
                                //             form1.email.focus();
                                //             return false;
                                //         }
                                //     }
                                //     else
                                //     {
                                //         alert("请输入E-mail!");
                                //         form1.email.focus();
                                //         return false;
                                //     }
                                return true;
                            }
                        </script>

                        <%--    ————————————————--%>
                        <%--    版权声明：本文为CSDN博主「倚世独殇」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。--%>
                        <%--    原文链接：https://blog.csdn.net/u012804490/article/details/38143241--%>

                        <form method="POST" action="${pageContext.request.contextPath}/servlet/saveAnswerServlet" name="form1" οnsubmit="return on_submit()">
                            <%--        new user register<br>--%>
                            <%--        username(*):<input type="text" name="username" size="20"><br>--%>
                            <%--        password(*):<input type="password" name="userpassword" size="20"><br>--%>
                            <%--        password again(*):<input type="password" name="reuserpassword" size="20"><br>--%>
                            <%--        sex: <input type="radio" value="男" checked name="sex">man<input type="radio" name="sex" value="女">woman<br>--%>
                            <%--        born date: <input name="year" size="4" maxlength=4>年--%>
                            <%--        <select name="month">--%>
                            <%--            <option value="1" selected>1</option>--%>
                            <%--            <option value="2">2</option>--%>
                            <%--            <option value="3">3</option>--%>
                            <%--            <option value="4">4</option>--%>
                            <%--            <option value="5">5</option>--%>
                            <%--            <option value="6">6</option>--%>
                            <%--            <option value="7">7</option>--%>
                            <%--            <option value="8">8</option>--%>
                            <%--            <option value="9">9</option>--%>
                            <%--            <option value="10">10</option>--%>
                            <%--            <option value="11">11</option>--%>
                            <%--            <option value="12">12</option>--%>
                            <%--        </select>month--%>
                            <%--        <input name="day" size="3" maxlength=4>day<br>--%>
                            <%--        email(*):<input name="E-mail" maxlength=28><br>--%>
                            <%--        address:<input type="text" name="address" size="20"><br>--%>

                            <p>
                                46.<label>
                                <input type="radio" name="RadioGroup1" value="1" id="RadioGroup1_0">
                                A</label>
                                <label>
                                    <input type="radio" name="RadioGroup1" value="2" id="RadioGroup1_1">
                                    B</label>
                                <label>
                                    <input type="radio" name="RadioGroup1" value="3" id="RadioGroup1_2">
                                    C</label>
                                <label>
                                    <input type="radio" name="RadioGroup1" value="4" id="RadioGroup1_3">
                                    D</label>
                            </p>

                            <p>
                                47.<label>
                                <input type="radio" name="RadioGroup2" value="1" id="RadioGroup2_0">
                                A</label>
                                <label>
                                    <input type="radio" name="RadioGroup2" value="2" id="RadioGroup2_1">
                                    B</label>
                                <label>
                                    <input type="radio" name="RadioGroup2" value="3" id="RadioGroup2_2">
                                    C</label>
                                <label>
                                    <input type="radio" name="RadioGroup2" value="4" id="RadioGroup2_3">
                                    D</label>
                            </p>

                            <p>
                                48.<label>
                                <input type="radio" name="RadioGroup3" value="1" id="RadioGroup3_0">
                                A</label>
                                <label>
                                    <input type="radio" name="RadioGroup3" value="2" id="RadioGroup3_1">
                                    B</label>
                                <label>
                                    <input type="radio" name="RadioGroup3" value="3" id="RadioGroup3_2">
                                    C</label>
                                <label>
                                    <input type="radio" name="RadioGroup3" value="4" id="RadioGroup3_3">
                                    D</label>
                            </p>

                            <p>
                                49.<label>
                                <input type="radio" name="RadioGroup4" value="1" id="RadioGroup4_0">
                                A</label>
                                <label>
                                    <input type="radio" name="RadioGroup4" value="2" id="RadioGroup4_1">
                                    B</label>
                                <label>
                                    <input type="radio" name="RadioGroup4" value="3" id="RadioGroup4_2">
                                    C</label>
                                <label>
                                    <input type="radio" name="RadioGroup4" value="4" id="RadioGroup4_3">
                                    D</label>
                            </p>

                            <p>
                                50.<label>
                                <input type="radio" name="RadioGroup5" value="1" id="RadioGroup5_0">
                                A</label>
                                <label>
                                    <input type="radio" name="RadioGroup5" value="2" id="RadioGroup5_1">
                                    B</label>
                                <label>
                                    <input type="radio" name="RadioGroup5" value="3" id="RadioGroup5_2">
                                    C</label>
                                <label>
                                    <input type="radio" name="RadioGroup5" value="4" id="RadioGroup5_3">
                                    D</label>
                            </p>
                            <input type="submit" value="submit" name="B1"><input type="reset" value="reset" name="B2"><br>
                        </form>
                        <%--    ————————————————--%>
                        <%--    版权声明：本文为CSDN博主「倚世独殇」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。--%>
                        <%--    原文链接：https://blog.csdn.net/u012804490/article/details/38143241--%>

                        <%--	<table width="200" border="1">--%>
                        <%--        <form class="form-group"--%>
                        <%--              action="${pageContext.request.contextPath}/servlet/saveAnswerServlet"--%>
                        <%--              method="post">--%>
                        <%--  <tbody>--%>
                        <%--    <tr>--%>
                        <%--      <th width="50" height="50" bgcolor="#969191" scope="row">&nbsp;46</th>--%>
                        <%--      <td bgcolor="#D0CECE"><p>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup1" value="1" id="RadioGroup1_0">--%>
                        <%--          A</label>--%>
                        <%--<!--        <br>-->--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup1" value="2" id="RadioGroup1_1">--%>
                        <%--          B</label>--%>
                        <%--<!--        <br>-->--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup1" value="3" id="RadioGroup1_2">--%>
                        <%--          C</label>--%>
                        <%--<!--        <br>-->--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup1" value="4" id="RadioGroup1_3">--%>
                        <%--          D</label>--%>
                        <%--<!--        <br>-->--%>
                        <%--      </p></td>--%>
                        <%--    </tr>--%>
                        <%--    <tr>--%>
                        <%--      <th bgcolor="#D0CECE" scope="row">&nbsp;47</th>--%>
                        <%--      <td bgcolor="#969191"><p>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup2" value="1" id="RadioGroup2_0">--%>
                        <%--          A</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup2" value="2" id="RadioGroup2_1">--%>
                        <%--          B</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup2" value="3" id="RadioGroup2_2">--%>
                        <%--          C</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup2" value="4" id="RadioGroup2_3">--%>
                        <%--          D</label>--%>
                        <%--      </p></td>--%>
                        <%--    </tr>--%>
                        <%--    <tr>--%>
                        <%--      <th bgcolor="#969191" scope="row">&nbsp;48</th>--%>
                        <%--      <td bgcolor="#D0CECE"><p>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup3" value="1" id="RadioGroup3_0">--%>
                        <%--          A</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup3" value="2" id="RadioGroup3_1">--%>
                        <%--          B</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup3" value="3" id="RadioGroup3_2">--%>
                        <%--          C</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup3" value="4" id="RadioGroup3_3">--%>
                        <%--          D</label>--%>
                        <%--      </p></td>--%>
                        <%--    </tr>--%>
                        <%--    <tr>--%>
                        <%--      <th bgcolor="#D0CECE" scope="row">&nbsp;49</th>--%>
                        <%--      <td bgcolor="#969191"><p>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup4" value="1" id="RadioGroup4_0">--%>
                        <%--          A</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup4" value="2" id="RadioGroup4_1">--%>
                        <%--          B</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup4" value="3" id="RadioGroup4_2">--%>
                        <%--          C</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup4" value="4" id="RadioGroup4_3">--%>
                        <%--          D</label>--%>
                        <%--      </p></td>--%>
                        <%--    </tr>--%>
                        <%--    <tr>--%>
                        <%--      <th bgcolor="#969191" scope="row">&nbsp;50</th>--%>
                        <%--      <td bgcolor="#D0CECE"><p>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup5" value="1" id="RadioGroup5_0">--%>
                        <%--          A</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup5" value="2" id="RadioGroup5_1">--%>
                        <%--          B</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup5" value="3" id="RadioGroup5_2">--%>
                        <%--          C</label>--%>
                        <%--        <label>--%>
                        <%--          <input type="radio" name="RadioGroup5" value="4" id="RadioGroup5_3">--%>
                        <%--          D</label>--%>
                        <%--      </p></td>--%>
                        <%--    </tr>--%>
                        <%--  </tbody>--%>
                        <%--    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
                        <%--    <%--%>
                        <%--        String strRadio = request.getParameter("RadioGroup1");--%>
                        <%--        System.out.println("strRadio = " + strRadio);--%>
                        <%--    %>--%>
                        <%--</table>--%>

                        <%--    <input name="save" type="button" id="save" value="保存">--%>
                        <!--	<br>-->
                        <%--<input type="submit">--%>


                        <%--                                <div class="events-detail-info row my-5">--%>
                        <%--                                    <div class="col-lg-12 col-12">--%>
                        <%--                                        <h4 class="mb-3">Event Detail</h4>--%>
                        <%--                                  </div>--%>

                        <%--                                    <div class="col-lg-4 col-12">--%>
                        <%--                                        <span class="custom-block-span">Date:</span>--%>

                        <%--                                        <p class="mb-0">18 Mar 2048</p>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="col-lg-4 col-12 my-3 my-lg-0">--%>
                        <%--                                        <span class="custom-block-span">Location:</span>--%>

                        <%--                                        <p class="mb-0">Tiya Golf Club</p>--%>
                        <%--                                    </div>--%>

                        <%--                                    <div class="col-lg-4 col-12">--%>
                        <%--                                        <span class="custom-block-span">Ticket:</span>--%>

                        <%--                                        <p class="mb-0">$150</p>--%>
                        <%--                                    </div>--%>
                        <%--            </div>--%>

                        <%--                                <div class="contact-info">--%>
                        <%--                                    <div class="contact-info-item">--%>
                        <%--                                        <div class="contact-info-body">--%>
                        <%--                                            <strong>London, United Kingdom</strong>--%>

                        <%--                                            <p class="mt-2 mb-1">--%>
                        <%--                                                <a href="tel: 010-020-0340" class="contact-link">--%>
                        <%--                                                    (020)--%>
                        <%--                                                    010-020-0340--%>
                        <%--                                                </a>--%>
                        <%--                                            </p>--%>

                        <%--                                            <p class="mb-0">--%>
                        <%--                                                <a href="mailto:info@company.com" class="contact-link">--%>
                        <%--                                                    info@company.com--%>
                        <%--                                                </a>--%>
                        <%--                                            </p>--%>
                        <%--                                        </div>--%>

                        <%--                                        <div class="contact-info-footer">--%>
                        <%--                                            <a href="#">Directions</a>--%>
                        <%--                                        </div>--%>
                        <%--                                    </div>--%>

                        <%--                                    <img src="images/WorldMap.svg" class="img-fluid" alt="">--%>
                        <%--                                </div>--%>
                    </div>
                </div>

            </div>
        </div>
    </section>
</main>

<!--
        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-6 col-12 me-auto mb-5 mb-lg-0">
                        <a class="navbar-brand d-flex align-items-center" href="index.html">
                            <img src="images/logo.png" class="navbar-brand-image img-fluid" alt="">
                            <span class="navbar-brand-text">
                                Tiya
                                <small>Golf Club</small>
                            </span>
                        </a>
                    </div>

                    <div class="col-lg-3 col-12">
                        <h5 class="site-footer-title mb-4">Join Us</h5>

                        <p class="d-flex border-bottom pb-3 mb-3 me-lg-3">
                            <span>Mon-Fri</span>
                            6:00 AM - 6:00 PM
                        </p>

                        <p class="d-flex me-lg-3">
                            <span>Sat-Sun</span>
                            6:30 AM - 8:30 PM
                        </p>
                        <br>
                        <p class="copyright-text">Copyright © 2048 Tiya Golf Club</p>
                    </div>

                        <div class="col-lg-2 col-12 ms-auto">
                            <ul class="social-icon mt-lg-5 mt-3 mb-4">
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-instagram"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-twitter"></a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-whatsapp"></a>
                                </li>
                            </ul>

                            <p class="copyright-text">Copyright &copy; 2023.Company name All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                        </div>

                </div>
            </div>
-->

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#81B29A" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
</footer>


<!-- JAVASCRIPT FILES -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
