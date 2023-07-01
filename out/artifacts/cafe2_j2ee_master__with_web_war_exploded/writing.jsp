<%@ page import="java.io.FileReader" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.InputStreamReader" %><%
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
    String writingCompC = jsonObject.getString("Writing");
%>
<!doctype html>

<html lang="en">
    <head>
        <meta charset="utf-8">
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
            #countdown {
                font-size: 24px;
                font-weight: bold;
                text-align: center;
                position: fixed;
                top: 10px;
                right: 10px;
            }

            /* ����һЩ��ʽ��ģ��ҳ����� */
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
                // �û������ȷ��
                // ��ת��index.jspҳ��
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
                    <div class="row">

                        <div id="countdown">02:00:00</div>

                        <script>
                            var countdownElement = document.getElementById('countdown');
                            var totalTime = 2*60*60; // ����Сʱ��������

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


                        <div class="col-lg-6 col-md-8 col-12 mx-auto">
                            <h2 class="mb-lg-5 mb-4">Writing </h2>

                    <div class="custom-block-info">
                                <h3 class="mb-3">&nbsp;</h3>
						<style>
							p{width:800px; text-indent:2em}
						</style>
                        <p><%= writingCompC %></p>

<%--				<style>--%>
<%--					p{width:400px; text-indent:0em}--%>
<%--				</style>--%>
			</p>



    <%@ page contentType="text/html;charset=gb2312" %>
    <script language="javascript">
        function on_submit()  // ��֤���ݵĺϷ���
        {

            return true;
        }
    </script>


    <form method="POST" action="${pageContext.request.contextPath}/servlet/SaveWritingAnswerServlet" name="form1" ��nsubmit="return on_submit()">

        <input name="writing" style="width: 800px; height: 500px;" maxlength="200"><br>

        <input type="submit" value="submit" name="B1"><input type="reset" value="reset" name="B2"><br>
    </form>

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
