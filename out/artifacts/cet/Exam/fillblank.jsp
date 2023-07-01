<%@ page import="org.json.JSONObject" %>
<%@ page import="static java.awt.SystemColor.window" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.InputStreamReader" %>

<%
    String filePath = "D:\\IDEA\\cafe2-j2ee-master -with-web\\cafe2-j2ee-master -with-web\\WebContent\\applicant.json";
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



    String lisR = jsonObject.getString("Reading Comprehension SectionA");
    String[] lisRs = lisR.split("#");
    int i = 0;
    for (String s:lisRs) {
        i++;
        System.out.println(i + s);
    }
    String direction=lisRs[0];
    String content=lisRs[1];

    String questions=lisRs[2];
    String[] subquestions=new String[15];
    String[] strs = questions.split("\\)");
    String[] letter = new String[15];
    letter[0] = "A"; letter[1] = "F"; letter[2] = "K"; letter[3] = "B"; letter[4] = "G"; letter[5] = "L";
    letter[6] = "C"; letter[7] = "H"; letter[8] = "M"; letter[9] = "D"; letter[10] = "I"; letter[11] = "N";
    letter[12] = "E"; letter[13] = "J"; letter[14] = "O";

    for(int j1=1;j1<=15;j1++){

        StringBuilder sb = new StringBuilder(strs[j1]);
        sb.insert(0, letter[j1-1]);
        sb.insert(1, ")");
        sb.delete(sb.length() - 1, sb.length());
        subquestions[j1-1]=sb.toString();
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

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <link href="../css/bootstrap-icons.css" rel="stylesheet">

    <link href="../css/index.css" rel="stylesheet">



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
                        <em>Passage One </em>

                        <div class="custom-block-info">
                            <h3 class="mb-3">&nbsp;</h3>
                            <style>
                                p{width:400px; text-indent:2em}
                            </style>
                            <p><%= direction%></p>
                            <br>
                            <p><%= content%></p>


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

                        <div class="custom-block-info">
                            <h3 class="mb-3">&nbsp;</h3>

                            <% for (int i1 = 0; i1 < subquestions.length; i1++) { %>
                            <%= subquestions[i1] %>&nbsp;

                            <% if ((i1 + 1) % 3 == 0) { %><br><% } %>
                            <% } %>

                            <%@ page contentType="text/html;charset=gb2312" %>
                            <script language="javascript">
                                function on_submit()  // 验证数据的合法性
                                {

                                    return true;
                                }
                            </script>





                            <form method="POST" action="${pageContext.request.contextPath}/servlet/SaveFillblankServlet" name="form1" οnsubmit="return on_submit()">

                                <p>
                                    26.<label>
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
                                    27.<label>
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
                                    28.<label>
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
                                    29.<label>
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
                                    30.<label>
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



                                <p>
                                    31.<label>
                                    <input type="radio" name="RadioGroup6" value="1" id="RadioGroup6_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup6" value="2" id="RadioGroup6_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup6" value="3" id="RadioGroup6_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup6" value="4" id="RadioGroup6_3">
                                        D</label>
                                </p>

                                <p>
                                    32.<label>
                                    <input type="radio" name="RadioGroup7" value="1" id="RadioGroup7_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup7" value="2" id="RadioGroup7_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup7" value="3" id="RadioGroup7_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup7" value="4" id="RadioGroup7_3">
                                        D</label>
                                </p>

                                <p>
                                    33.<label>
                                    <input type="radio" name="RadioGroup8" value="1" id="RadioGroup8_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup8" value="2" id="RadioGroup8_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup8" value="3" id="RadioGroup8_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup8" value="4" id="RadioGroup8_3">
                                        D</label>
                                </p>

                                <p>
                                    34.<label>
                                    <input type="radio" name="RadioGroup9" value="1" id="RadioGroup9_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup9" value="2" id="RadioGroup9_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup9" value="3" id="RadioGroup9_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup9" value="4" id="RadioGroup9_3">
                                        D</label>
                                </p>

                                <p>
                                    35.<label>
                                    <input type="radio" name="RadioGroup10" value="1" id="RadioGroup10_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup10" value="2" id="RadioGroup10_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup10" value="3" id="RadioGroup10_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup10" value="4" id="RadioGroup10_3">
                                        D</label>
                                </p>

                                <input type="submit" value="submit" name="B1"><input type="reset" value="reset" name="B2"><br>
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
