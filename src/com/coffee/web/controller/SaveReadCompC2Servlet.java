package com.coffee.web.controller;

import com.coffee.domain.User;
import com.coffee.service.ISaverFiveRadioService;
import com.coffee.service.impl.SaverFiveRadioServiceImpl;
import com.coffee.util.WebUtils;
import com.coffee.web.formbean.FiveRadioAnswerFormBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

//import javax.servlet.*;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;

@WebServlet(name = "SaveReadCompC2Servlet", urlPatterns = "/servlet/SaveReadCompC2Servlet")
public class SaveReadCompC2Servlet extends HttpServlet {
    private ISaverFiveRadioService SaverService = new SaverFiveRadioServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");

        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("单选题46结果是:"+request.getParameter("RadioGroup1")+"<br>");
        System.out.println("单选题47结果是:"+request.getParameter("RadioGroup2")+"<br>");
        System.out.println("单选题48结果是:"+request.getParameter("RadioGroup3")+"<br>");
        System.out.println("单选题49结果是:"+request.getParameter("RadioGroup4")+"<br>");
        System.out.println("单选题50结果是:"+request.getParameter("RadioGroup5")+"<br>");

        FiveRadioAnswerFormBean formBean = WebUtils.requestToBean(request, FiveRadioAnswerFormBean.class);
        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup1")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup2")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup3")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup4")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup5")));
        System.out.println("formBean: "+formBean.toString());
        saveFiveRadioAnswer(request, response, formBean, 51);
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

    private void saveFiveRadioAnswer(HttpServletRequest request, HttpServletResponse response, FiveRadioAnswerFormBean formBean, int startnum)
            throws ServletException, IOException {
        try {
            User user = (User) request.getSession().getAttribute("user");
            int userId = user.getUserId();
            System.out.println("after get user");
            SaverService.save(formBean.getQuestion1(), formBean.getQuestion2(), formBean.getQuestion3(),
                    formBean.getQuestion4(), formBean.getQuestion5(), startnum, userId, 1);
            System.out.println("Success save 5 radio answer");
            System.out.println(formBean.toString());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

//        if (user == null) {
//            return false;
//        } else {
//            // 成功登录
//            request.getSession().setAttribute("user", user);
//            System.out.println("--------User login succeed-----------");
//            return true;
//        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
