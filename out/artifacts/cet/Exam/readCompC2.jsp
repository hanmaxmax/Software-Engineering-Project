
<%@ page import="org.json.JSONObject" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.InputStreamReader" %><%
    //    String json = (String)pageContext.getAttribute("dataJson");
//    pageContext.setAttribute("parsedJSON", org.apache.commons.json.JSON.parse(json));
//    System.out.println("json!!!!! = "+json);
//                        StringBuilder stringBuilder = new StringBuilder();
//                        int numRead;
//                        while((numRead = fileReader.read(buffer)))
    String filePath = "D:\\IDEA\\cafe2-j2ee-master -with-web\\Software-Engineering-Project\\WebContent\\Exam\\applicant.json";
//    FileReader fileReader = new FileReader(filePath);
    InputStreamReader fileReader =new InputStreamReader(new FileInputStream(filePath),"UTF-8");
    char[] buffer = new char[1024];
    StringBuilder stringBuilder = new StringBuilder();
    int numRead;
    while ((numRead = fileReader.read(buffer)) != -1) {
        stringBuilder.append(buffer, 0, numRead);
    }
    System.out.println("jsonContent!!!"+stringBuilder.substring(0));
    JSONObject jsonObject = new JSONObject(stringBuilder.substring(0));
    String q1 = jsonObject.getString("Writing");
    System.out.println("q1!!!!! = " + q1);
    String readCompC = jsonObject.getString("Reading Comprehension SectionC");
    String[] readCompCs = readCompC.split("#");
    int i = 0;
    for (String s:readCompCs) {
        i++;
        System.out.println(i + s);
    }
    // readComps[9] 文章二的Direction
    // readComps[10] 文章二的原文
    // readcomps[11]->[15]是文章二的五个小题
    // readComps[10]是原文，在此进行分段处理 begin
    String[] pharas =readCompCs[10].split("&&&");
    System.out.println("paras.len = "+pharas.length);
    // readComps[10]是原文，在此进行分段处理 end
    String[][] radios = new String[5][5]; // 题面+四个选项
    for(int j = 11; j < 16; j ++)
    {
        String[] strs = readCompCs[j].split("\\)");
        radios[j - 11][0] = strs[0].substring(0, strs[0].length() - 1);
        String[] letter = new String[4];
        letter[0] = "A"; letter[1] = "B"; letter[2] = "C"; letter[3] = "D";
        for(int k = 1; k < 5; k ++)
        {
            StringBuilder sb = new StringBuilder(strs[k]);
            sb.insert(0, letter[k - 1]);
            sb.insert(1, ")");
            sb.delete(sb.length() - 1, sb.length());
            radios[j - 11][k] = sb.toString();
        }
    }
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online CET-6</title>

<%--    <script>--%>
<%--        // 在 JavaScript 中处理和展示 JSON 内容--%>
<%--        var jsonContent1 = <%= readCompCs[0] %>;--%>
<%--        var jsonContent2 = <%= readCompCs[1] %>;--%>
<%--        var jsonContent3 = <%= readCompCs[2] %>;--%>
<%--        var jsonContent4 = <%= readCompCs[3] %>;--%>
<%--        var jsonContent51 = <%= jsonContent51 %>;--%>
<%--        var jsonContent52 = <%= jsonContent52 %>;--%>
<%--        var jsonContent53 = <%= jsonContent53 %>;--%>
<%--        var jsonContent54 = <%= jsonContent54 %>;--%>
<%--        var jsonContent55 = <%= jsonContent55 %>;--%>
<%--        var jsonContent6 = <%= jsonContent6 %>;--%>
<%--        var jsonContent7 = <%= jsonContent7 %>;--%>
<%--        // 在此处可以使用 jsonContent 对象进行相应的操作和展示--%>
<%--        // console.log(jsonContent);  // 示例：在控制台打印 JSON 内容--%>
<%--    </script>--%>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">

    <link href="../assets/css/bootstrap-icons.css" rel="stylesheet">

    <link href="../assets/css/index.css" rel="stylesheet">



    <style>
        .container {
            display: flex;
            flex-direction: row;
        }

        .left {
            width: 50%;
            float: left;
            padding: 10px;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: gray;
            scrollbar-track-color: lightgray;
        }

        .right {
            width: 50%;
            position: fixed;
            top: 0;
            right: 0;
            height: 100vh;
            overflow-y: auto;
            scrollbar-width: thin;
            scrollbar-color: gray;
            scrollbar-track-color: lightgray;
            padding: 10px;
            background-color: rgba(255, 250, 240, 1); /* 添加这一行来设置背景色 */
        }


        #countdown {
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            position: fixed;
            top: 10px;
            right: 10px;
        }

        /* 添加一些样式以模拟页面滚动 */
        body {
            height: 2000px;
        }
        h1 {
            margin-top: 50px;
        }

    </style>

    <script>
        function showConfirmation() {
            window.alert( "The exam ends!");
            // 用户点击了确认
            // 跳转到index.jsp页面
            window.location.href = "index.jsp";
        }
    </script>
</head>




<body>

<main>


    <section class="hero-section hero-50 d-flex justify-content-center align-items-center" id="section_1">

        <div class="section-overlay"></div>

        <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#3D405B" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#3D405B" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#3D405B" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>



        <svg viewBox="0 0 1962 178" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path fill="#ffffff" d="M 0 114 C 118.5 114 118.5 167 237 167 L 237 167 L 237 0 L 0 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 236 167 C 373 167 373 128 510 128 L 510 128 L 510 0 L 236 0 Z" stroke-width="0"></path> <path fill="#ffffff" d="M 509 128 C 607 128 607 153 705 153 L 705 153 L 705 0 L 509 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 704 153 C 812 153 812 113 920 113 L 920 113 L 920 0 L 704 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 919 113 C 1048.5 113 1048.5 148 1178 148 L 1178 148 L 1178 0 L 919 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1177 148 C 1359.5 148 1359.5 129 1542 129 L 1542 129 L 1542 0 L 1177 0 Z" stroke-width="0"></path><path fill="#ffffff" d="M 1541 129 C 1751.5 129 1751.5 138 1962 138 L 1962 138 L 1962 0 L 1541 0 Z" stroke-width="0"></path></svg>
    </section>


    <section class="events-section events-detail-section section-padding" id="section_2">
        <div class="container">


            <div class="left">


                <div class="row">
                    <div class="col-lg-6 col-md-8 col-12 mx-auto">

                        <div class="custom-block-info">
                            <h3 class="mb-3">&nbsp;</h3>
                            <style>
                                p{width:600px; text-indent:2em}
                            </style>

                            <p><strong><%= readCompCs[0] %></strong></p>
                            <br>
<%--                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent2 %></pre>--%>
<%--                        "two passage derection"--%>
                            <em><p><%= readCompCs[1] %></p></em>
<%--                            <br>--%>
<%--                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent3 %></pre>--%>
                            <em><p><%= readCompCs[9] %></p></em>
                            <br>
<%--                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent4 %></pre>--%>
<%--                            <br>--%>
<%--                            <% for (int i1 = 0; i1 < pharas.length; i1++) { %>--%>
                            <% for (int j1 = 0; j1 < pharas.length; j1++) { %>
                            <p><%= pharas[j1] %></p>
                            <% } %>
<%--                            <br>--%>
<%--                            <% } %>--%>
<%--                            <p><%= readCompCs[3] %></p>--%>
<%--                            <p>Many people asso<span style="font-size: 18px">ciate their self-worth with their work. The more successful their career,</span> the better they feel about themselves. Work-related self-esteem is therefore a worthy ideal to pursue with vigor, right? Well, not always. According to recent research, in which psychologists interviewed 370 full-time workers over a period of three weeks, the reality is a little more complicated. And it involves negative as well as positive consequences.&nbsp;It's natural to be drawn towards pleasure and to step away from pain. In the workplace, if that pleasure comes from a triumph which swells our self-respect, people will try to repeat the accomplishment. But repeating that accomplishment is often not realistic, which can lead to severe negative emotional consequences when it doesn't reoccur. This form of motivation is widely regarded as a negative type of motivation. It can hinder other more positive motivation types, such as completing a task purely because it's fulfilling or enjoyable. What consumes the employee instead is a pressing need to feel mighty and sure of themselves. They then take on only tasks and objectives which serve that ego-driven need. As a result, to avoid feelings of shame and worthlessness associated with failure, they extend themselves to such a degree that there's a subsequent adverse effect on their well-being. This internal pressure to succeed at all costs demands a lot of effort. It depletes their energy, culminating in disproportionate levels of damaging sentiment. What consumes the employee instead is a pressing need to feel mighty and sure of themselves. They then take on only tasks and objectives which serve that ego-driven need. As a result, to avoid feelings of shame and worthlessness associated with failure, they extend themselves to such a degree that there's a subsequent adverse effect on their well-being. This internal pressure to succeed at all costs demands a lot of effort. It depletes their energy, culminating in disproportionate levels of damaging sentiment. Those negative emotions mount into heightened anxiety, impacting their ability to make the most of their personal life. Their desire to avoid feeling inferior ends up making them feel inferior when it comes to their diminished capacity for friendship and leisure. They end up dissatisfied both at work and outside of it. But thankfully, for those people compelled almost entirely by this specific form of motivation, the news isn't all bad, or bad at all. The study also discovered several positive outcomes that can actually outweigh the harmful ones. Though these types of employees are motivated by the desire to avoid negative consequences, they are also motivated by the excitement of pursuing emotional rewards. This excitement makes pursuing goals enjoyable and stimulates pleasure and pride that would result from success. An effect of the positive motivation is that it neutralizes the existence of negative motivation. Sure, it affects people's personal lives to what could be deemed an unhealthy extent, because leisure activities are often seen as a part of life that must be sacrificed to manage work and family demands. However, the way people feel about their work has less to do with whether they're motivated by the preservation of self-esteem but more with the fact that they're simply motivated.</p>--%>


                        </div>
                    </div>

                </div>



            </div>





            <div class="right">

                <div id="countdown">00:15:00</div>

                <script>
                    var countdownElement = document.getElementById('countdown');
                    var totalTime = 15*60; // 两个小时的总秒数

                    function updateCountdown() {
                        var hours = Math.floor(totalTime / 3600);
                        var minutes = Math.floor((totalTime % 3600) / 60);
                        var seconds = totalTime % 60;

                        var formattedTime = (hours < 10 ? "0" + hours : hours) + ":" +
                            (minutes < 10 ? "0" + minutes : minutes) + ":" +
                            (seconds < 10 ? "0" + seconds : seconds);

                        countdownElement.textContent = formattedTime;

                        if (totalTime <= 0) {
                            clearInterval(countdownInterval);
                            countdownElement.textContent = "The exam ends!";
                            showConfirmation();
                        } else {
                            totalTime--;
                        }
                    }

                    var countdownInterval = setInterval(updateCountdown, 1000);
                </script>

                <div class="row">
                    <div class="col-lg-6 col-md-8 col-12 mx-auto">
                        <em>Questions 51 to 55 are based on the following passage</em>

                        <div class="custom-block-info">
                            <h3 class="mb-3">&nbsp;</h3>



<%--                            <p>		      46. What does the author say about the pursuit of work-related self-esteem?--%>
<%--                                <br>--%>

<%--                                A) It may result in negative motivation.--%>
<%--                                <br>--%>
<%--                                B) It contributes to one's accomplishments.--%>
<%--                                <br>--%>
<%--                                C) It can increase one's vigor as one keeps trying.--%>
<%--                                <br>--%>
<%--                                D) It costs too much emotionally and psychologically.--%>
<%--                            </p>--%>
<%--                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent51 %></pre>--%>
<%--                            <p><%= jsonContent51%></p>--%>
<%--                            <br>--%>
<%--&lt;%&ndash;                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent52 %></pre>&ndash;%&gt;--%>
<%--                            <p><%= jsonContent52%></p>--%>
<%--                            <br>--%>
<%--&lt;%&ndash;                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent53 %></pre>&ndash;%&gt;--%>
<%--                            <p><%= jsonContent53%></p>--%>
<%--                            <br>--%>
<%--&lt;%&ndash;                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent54 %></pre>&ndash;%&gt;--%>
<%--                            <p><%= jsonContent54%></p>--%>
<%--                            <br>--%>
<%--&lt;%&ndash;                            <pre style="width:680px; word-break: break-all; word-wrap: break-word; border: 1px; white-space:normal"><%= jsonContent55 %></pre>&ndash;%&gt;--%>
<%--                            <p><%= jsonContent55%>--%>
<%--                            <br>--%>
                            <% for (int i1 = 0; i1 < 5; i1++) { %>
                            <% for (int j1 = 0; j1 < 5; j1++) { %>
                            <%= radios[i1][j1] %><br>
                            <% } %>
                            <br>
                            <% } %>
<%--                            <p>		      47. What do employees tend to do in pursuing work-related self-esteem?--%>
<%--                                <br>--%>

<%--                                A) Take on tasks well beyond their actual capabilities.--%>
<%--                                <br>--%>
<%--                                B) Strive to succeed at the expense of their well-being.--%>
<%--                                <br>--%>
<%--                                C) Resort to all means regardless of the consequences.--%>
<%--                                <br>--%>
<%--                                D) Exaggerate their sense of shame and worthlessness.--%>
<%--                            </p>--%>


<%--                            <p>		      48. What do we learn about people over-concerned with work-related self-esteem?--%>
<%--                                <br>--%>

<%--                                A) They may often feel inferior to their colleagues.--%>
<%--                                <br>--%>
<%--                                B) They cannot enjoy their personal life to the full.--%>
<%--                                <br>--%>
<%--                                C) They are never satisfied with their achievements.--%>
<%--                                <br>--%>
<%--                                D) They have their own view of friendship and leisure.--%>
<%--                            </p>--%>


<%--                            </p>--%>
<%--                            <p>		      49. What is the good news we learn from the recent research?--%>
<%--                                <br>--%>

<%--                                A) The pursuit of goals may turn out to be enjoyable and pleasant.--%>
<%--                                <br>--%>
<%--                                B) The emotional rewards from goal pursuit are worth the pains taken.--%>
<%--                                <br>--%>
<%--                                C) The negative consequences of goal pursuit can mostly be avoided.--%>
<%--                                <br>--%>
<%--                                D) The goal of swelling self-esteem can be achieved if one keeps trying.--%>
<%--                            </p>--%>


<%--                            <p>		      50. What can we infer from the last paragraph?--%>
<%--                                <br>--%>

<%--                                A) Workers have to make sacrifices to preserve self-esteem.--%>
<%--                                <br>--%>
<%--                                B) Self-esteem swells when workers are strongly motivated.--%>
<%--                                <br>--%>
<%--                                C) Pursuit of goals affects people's personal lives to an unhealthy extent.--%>
<%--                                <br>--%>
<%--                                D) People feel positive about their work as long as they are motivated.--%>
<%--                            </p>--%>
<%--                            <p>&nbsp;</p>--%>
                            <!--<p>Tiya is 100% free CSS template provided by TemplateMo website. Plese tell your friends about our website. Thank you for visiting.</p>-->

                            <%@ page contentType="text/html;charset=gb2312" %>
                            <script language="javascript">
                                function on_submit()  // 验证数据的合法性
                                {

                                    return true;
                                }
                            </script>




                            <form method="POST" action="${pageContext.request.contextPath}/servlet/SaveReadCompC2Servlet" name="form1" οnsubmit="return on_submit()">

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
                                <br>
                                <br>
                                <br>
                                <br>
                            </form>



                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>
</main>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="#81B29A" fill-opacity="1" d="M0,224L34.3,192C68.6,160,137,96,206,90.7C274.3,85,343,139,411,144C480,149,549,107,617,122.7C685.7,139,754,213,823,240C891.4,267,960,245,1029,224C1097.1,203,1166,181,1234,160C1302.9,139,1371,117,1406,106.7L1440,96L1440,320L1405.7,320C1371.4,320,1303,320,1234,320C1165.7,320,1097,320,1029,320C960,320,891,320,823,320C754.3,320,686,320,617,320C548.6,320,480,320,411,320C342.9,320,274,320,206,320C137.1,320,69,320,34,320L0,320Z"></path></svg>
</footer>


<!-- JAVASCRIPT FILES -->
<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/custom.js"></script>

</body>
</html>
