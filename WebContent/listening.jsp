<%@ page import="java.io.FileReader" %>
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
    String lisA = jsonObject.getString("Listening Comprehension SectionA");
    String lisB = jsonObject.getString("Listening Comprehension SectionB");
    String lisC = jsonObject.getString("Listening Comprehension SectionC");
    String[] lisAs = lisA.split("#");
    String[] lisBs = lisB.split("#");
    String[] lisCs = lisC.split("#");
    String[] strb = new String[lisAs.length+lisBs.length+lisCs.length];
    int strbptr=0;
    for(String s : lisAs)
    {
        if(s.charAt(0)=='S') continue;
        if(s.charAt(0)=='D') continue;
        if(s.charAt(0)=='Q') continue;
        strb[strbptr++]=s;
    }
    for(String s : lisBs)
    {
        if(s.charAt(0)=='S') continue;
        if(s.charAt(0)=='D') continue;
        if(s.charAt(0)=='Q') continue;
        strb[strbptr++]=s;
    }
    for(String s : lisCs)
    {
        if(s.charAt(0)=='S') continue;
        if(s.charAt(0)=='D') continue;
        if(s.charAt(0)=='Q') continue;
        strb[strbptr++]=s;
    }
    int i = 0;
    for (String s:lisAs) {
        i++;
        System.out.println(i + s);
    }
    String[][] myarry = new String[25][5];
    strbptr=0;
    for(int i1=0;i1<25;i1++){
        String tmp=strb[i1];
        String[] strs = tmp.split("\\)");
        String[] letter = new String[4];
        letter[0] = "A"; letter[1] = "B"; letter[2] = "C"; letter[3] = "D";
        myarry[i1][0]=strs[0].substring(0, strs[0].length() - 1);
        for(int j1=1;j1<5;j1++){
            StringBuilder sb = new StringBuilder(strs[j1]);
            sb.insert(0, letter[j1-1]);
            sb.insert(1, ")");
            sb.delete(sb.length() - 1, sb.length());
            myarry[i1][j1]=sb.toString();
        }
    }
    String sectiona=lisAs[0];
    String adirection=lisAs[1];
    String sectionb=lisBs[0];

    String bdirection=lisBs[1];
    String sectionc=lisCs[0];
    String cdirection=lisCs[0];
    String addinfo = lisCs[8];
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online CET6 Exam System</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400&display=swap" rel="stylesheet">

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/bootstrap-icons.css" rel="stylesheet">

    <link href="css/index.css" rel="stylesheet">



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
                            <p> <%= sectiona  %></p><br>
                            <p> <%= adirection  %></p><br>
                            <% for (int i1 = 0; i1 < 8; i1++) { %>
                            <% for (int j1 = 0; j1 < 5; j1++) { %>
                            <%= myarry[i1][j1] %><br>
                            <% } %>

                            <% } %>


                            <p> <%= sectionb  %></p><br>
                            <p> <%= bdirection  %></p><br>
                            <% for (int i1 = 8; i1 < 15; i1++) { %>
                            <% for (int j1 = 0; j1 < 5; j1++) { %>
                            <%= myarry[i1][j1] %><br>
                            <% } %>

                            <% } %>


                            <p> <%= sectionc  %></p><br>
                            <p> <%= cdirection  %></p><br>
                            <% for (int i1 = 16; i1 < 22; i1++) { %>
                            <% for (int j1 = 0; j1 < 5; j1++) { %>
                            <%= myarry[i1][j1] %><br>
                            <% } %>

                            <% } %>


                            <p> <%= addinfo  %></p><br>
                            <% for (int i1 = 22; i1 < myarry.length; i1++) { %>
                            <% for (int j1 = 0; j1 < 5; j1++) { %>
                            <%= myarry[i1][j1] %><br>
                            <% } %>

                            <% } %>

                        </div>
                    </div>

                </div>



            </div>





            <div class="right">

                <div id="countdown">02:00:00</div>

                <script>
                    var countdownElement = document.getElementById('countdown');
                    var totalTime = 2*60*60; // 两个小时的总秒数

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
                        <em>Questions 46 to 50 are based on the following passage</em>

                        <div class="custom-block-info">
                            <h3 class="mb-3">&nbsp;</h3>

                            <p>&nbsp;</p>
                            <%@ page contentType="text/html;charset=gb2312" %>
                            <script language="javascript">
                                function on_submit()  // 验证数据的合法性
                                {

                                    return true;
                                }
                            </script>


                            <form method="POST" action="${pageContext.request.contextPath}/servlet/SaveListeningAnswerServlet" name="form1" οnsubmit="return on_submit()">

                                <p>
                                    1.<label>
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
                                    2.<label>
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
                                    3.<label>
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
                                    4.<label>
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
                                    5.<label>
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
                                    6.<label>
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
                                    7.<label>
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
                                    8.<label>
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
                                    9.<label>
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
                                    10.<label>
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







                                <p>
                                    11.<label>
                                    <input type="radio" name="RadioGroup11" value="1" id="RadioGroup11_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup11" value="2" id="RadioGroup11_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup11" value="3" id="RadioGroup11_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup11" value="4" id="RadioGroup11_3">
                                        D</label>
                                </p>

                                <p>
                                    12.<label>
                                    <input type="radio" name="RadioGroup12" value="1" id="RadioGroup12_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup12" value="2" id="RadioGroup12_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup12" value="3" id="RadioGroup12_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup12" value="4" id="RadioGroup12_3">
                                        D</label>
                                </p>

                                <p>
                                    13.<label>
                                    <input type="radio" name="RadioGroup13" value="1" id="RadioGroup13_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup13" value="2" id="RadioGroup13_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup13" value="3" id="RadioGroup13_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup13" value="4" id="RadioGroup13_3">
                                        D</label>
                                </p>

                                <p>
                                    14.<label>
                                    <input type="radio" name="RadioGroup14" value="1" id="RadioGroup14_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup14" value="2" id="RadioGroup14_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup14" value="3" id="RadioGroup14_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup14" value="4" id="RadioGroup14_3">
                                        D</label>
                                </p>

                                <p>
                                    15.<label>
                                    <input type="radio" name="RadioGroup15" value="1" id="RadioGroup15_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup15" value="2" id="RadioGroup15_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup15" value="3" id="RadioGroup15_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup15" value="4" id="RadioGroup15_3">
                                        D</label>
                                </p>






                                <p>
                                    16.<label>
                                    <input type="radio" name="RadioGroup16" value="1" id="RadioGroup16_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup16" value="2" id="RadioGroup16_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup16" value="3" id="RadioGroup16_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup16" value="4" id="RadioGroup16_3">
                                        D</label>
                                </p>

                                <p>
                                    17.<label>
                                    <input type="radio" name="RadioGroup17" value="1" id="RadioGroup17_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup17" value="2" id="RadioGroup17_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup17" value="3" id="RadioGroup17_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup17" value="4" id="RadioGroup17_3">
                                        D</label>
                                </p>

                                <p>
                                    18.<label>
                                    <input type="radio" name="RadioGroup18" value="1" id="RadioGroup18_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup18" value="2" id="RadioGroup18_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup18" value="3" id="RadioGroup18_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup18" value="4" id="RadioGroup18_3">
                                        D</label>
                                </p>

                                <p>
                                    19.<label>
                                    <input type="radio" name="RadioGroup19" value="1" id="RadioGroup19_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup19" value="2" id="RadioGroup19_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup19" value="3" id="RadioGroup19_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup19" value="4" id="RadioGroup19_3">
                                        D</label>
                                </p>

                                <p>
                                    20.<label>
                                    <input type="radio" name="RadioGroup20" value="1" id="RadioGroup20_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup20" value="2" id="RadioGroup20_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup20" value="3" id="RadioGroup20_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup20" value="4" id="RadioGroup20_3">
                                        D</label>
                                </p>


                                <p>
                                    21.<label>
                                    <input type="radio" name="RadioGroup21" value="1" id="RadioGroup21_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup21" value="2" id="RadioGroup21_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup21" value="3" id="RadioGroup21_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup21" value="4" id="RadioGroup21_3">
                                        D</label>
                                </p >

                                <p>
                                    22.<label>
                                    <input type="radio" name="RadioGroup22" value="1" id="RadioGroup22_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup22" value="2" id="RadioGroup22_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup22" value="3" id="RadioGroup22_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup22" value="4" id="RadioGroup22_3">
                                        D</label>
                                </p >

                                <p>
                                    23.<label>
                                    <input type="radio" name="RadioGroup23" value="1" id="RadioGroup23_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup23" value="2" id="RadioGroup23_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup23" value="3" id="RadioGroup23_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup23" value="4" id="RadioGroup23_3">
                                        D</label>
                                </p >

                                <p>
                                    24.<label>
                                    <input type="radio" name="RadioGroup24" value="1" id="RadioGroup24_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup24" value="2" id="RadioGroup24_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup24" value="3" id="RadioGroup24_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup24" value="4" id="RadioGroup24_3">
                                        D</label>
                                </p >

                                <p>
                                    25.<label>
                                    <input type="radio" name="RadioGroup25" value="1" id="RadioGroup25_0">
                                    A</label>
                                    <label>
                                        <input type="radio" name="RadioGroup25" value="2" id="RadioGroup25_1">
                                        B</label>
                                    <label>
                                        <input type="radio" name="RadioGroup25" value="3" id="RadioGroup25_2">
                                        C</label>
                                    <label>
                                        <input type="radio" name="RadioGroup25" value="4" id="RadioGroup25_3">
                                        D</label>
                                </p >


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
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
