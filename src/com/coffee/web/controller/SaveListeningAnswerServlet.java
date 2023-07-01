package com.coffee.web.controller;

import java.io.*;
import java.sql.SQLException;

//import javax.servlet.*;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;

import com.coffee.domain.Admin;
import com.coffee.domain.User;
import com.coffee.service.IAdminService;
import com.coffee.service.IUserService;
import com.coffee.service.impl.AdminServiceImpl;
import com.coffee.service.impl.UserServiceImpl;
import com.coffee.util.WebUtils;
import com.coffee.web.formbean.FiveRadioAnswerFormBean;
import com.coffee.web.formbean.LoginFormBean;
import com.coffee.web.formbean.RegisterFormBean;
import com.coffee.service.ISaverFiveRadioService;
import com.coffee.service.impl.SaverFiveRadioServiceImpl;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SaveListeningAnswerServlet", urlPatterns = "/servlet/SaveListeningAnswerServlet")
public class SaveListeningAnswerServlet extends HttpServlet {
    private ISaverFiveRadioService SaverService = new SaverFiveRadioServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");
        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("单选题1结果是:"+request.getParameter("RadioGroup1")+"<br>");
        System.out.println("单选题2结果是:"+request.getParameter("RadioGroup2")+"<br>");
        System.out.println("单选题3结果是:"+request.getParameter("RadioGroup3")+"<br>");
        System.out.println("单选题4结果是:"+request.getParameter("RadioGroup4")+"<br>");
        System.out.println("单选题5结果是:"+request.getParameter("RadioGroup5")+"<br>");
        System.out.println("单选题6结果是:"+request.getParameter("RadioGroup6")+"<br>");
        System.out.println("单选题7结果是:"+request.getParameter("RadioGroup7")+"<br>");
        System.out.println("单选题8结果是:"+request.getParameter("RadioGroup8")+"<br>");
        System.out.println("单选题9结果是:"+request.getParameter("RadioGroup9")+"<br>");
        System.out.println("单选题10结果是:"+request.getParameter("RadioGroup10")+"<br>");
        System.out.println("单选题11结果是:"+request.getParameter("RadioGroup11")+"<br>");
        System.out.println("单选题12结果是:"+request.getParameter("RadioGroup12")+"<br>");
        System.out.println("单选题13结果是:"+request.getParameter("RadioGroup13")+"<br>");
        System.out.println("单选题14结果是:"+request.getParameter("RadioGroup14")+"<br>");
        System.out.println("单选题15结果是:"+request.getParameter("RadioGroup15")+"<br>");
        System.out.println("单选题16结果是:"+request.getParameter("RadioGroup16")+"<br>");
        System.out.println("单选题17结果是:"+request.getParameter("RadioGroup17")+"<br>");
        System.out.println("单选题18结果是:"+request.getParameter("RadioGroup18")+"<br>");
        System.out.println("单选题19结果是:"+request.getParameter("RadioGroup19")+"<br>");
        System.out.println("单选题20结果是:"+request.getParameter("RadioGroup20")+"<br>");
        System.out.println("单选题21结果是:"+request.getParameter("RadioGroup21")+"<br>");
        System.out.println("单选题22结果是:"+request.getParameter("RadioGroup22")+"<br>");
        System.out.println("单选题23结果是:"+request.getParameter("RadioGroup23")+"<br>");
        System.out.println("单选题24结果是:"+request.getParameter("RadioGroup24")+"<br>");
        System.out.println("单选题25结果是:"+request.getParameter("RadioGroup25")+"<br>");





        //        System.out.print("</body> </html>");


//        System.out.println("RadioGroup1 = " + request.getParameterValues("RadioGroup1"));
//        System.out.println("saveAnswerServlet request param = " + request.getQueryString());
//        System.out.println("saveAnswerServlet request url = " + request.getRequestURL());
//        System.out.println("saveAnswerServlet request uri = " + request.getRequestURI());
        FiveRadioAnswerFormBean formBean = WebUtils.requestToBean(request, FiveRadioAnswerFormBean.class);
        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup1")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup2")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup3")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup4")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup5")));

        saveFiveRadioAnswer(request, response, formBean, 1);

        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup6")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup7")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup8")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup9")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup10")));

        saveFiveRadioAnswer(request, response, formBean,6);


        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup11")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup12")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup13")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup14")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup15")));

        saveFiveRadioAnswer(request, response, formBean,11);


        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup16")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup17")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup18")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup19")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup20")));

        saveFiveRadioAnswer(request, response, formBean,16);



        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup21")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup22")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup23")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup24")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup25")));




        System.out.println("formBean: "+formBean.toString());
        saveFiveRadioAnswer(request, response, formBean, 21);
        // 弹框提示保存成功？
        response.sendRedirect("/questions.jsp");
    }

    public String codeToString(String str)  // 处理中文字符串的函数
    {
        String s=str;
        try
        {
            byte tempB[]=s.getBytes("ISO-8859-1");
            s=new String(tempB);
            return s;
        }catch(Exception e)
        {
            return s;
        }
    }

    private void saveFiveRadioAnswer(HttpServletRequest request, HttpServletResponse response, FiveRadioAnswerFormBean formBean, int num)
            throws ServletException, IOException {
        try {
            User user = (User) request.getSession().getAttribute("user");
            int userId = user.getUserId();
            SaverService.save(formBean.getQuestion1(), formBean.getQuestion2(), formBean.getQuestion3(),
                    formBean.getQuestion4(), formBean.getQuestion5(), num, userId, 1);
            System.out.println("Success save 5 radio answer");
            System.out.println(formBean.toString());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
