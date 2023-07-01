package com.coffee.web.controller;

import java.io.*;
import java.sql.SQLException;


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

@WebServlet(name = "SaveFillblankServlet", urlPatterns = "/servlet/SaveFillblankServlet")
public class SaveFillblankServlet extends HttpServlet {
    private ISaverFiveRadioService SaverService = new SaverFiveRadioServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");
        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("单选题26结果是:"+request.getParameter("RadioGroup1")+"<br>");
        System.out.println("单选题27结果是:"+request.getParameter("RadioGroup2")+"<br>");
        System.out.println("单选题28结果是:"+request.getParameter("RadioGroup3")+"<br>");
        System.out.println("单选题29结果是:"+request.getParameter("RadioGroup4")+"<br>");
        System.out.println("单选题30结果是:"+request.getParameter("RadioGroup5")+"<br>");
        System.out.println("单选题31结果是:"+request.getParameter("RadioGroup6")+"<br>");
        System.out.println("单选题32结果是:"+request.getParameter("RadioGroup7")+"<br>");
        System.out.println("单选题33结果是:"+request.getParameter("RadioGroup8")+"<br>");
        System.out.println("单选题34结果是:"+request.getParameter("RadioGroup9")+"<br>");
        System.out.println("单选题35结果是:"+request.getParameter("RadioGroup10")+"<br>");

        FiveRadioAnswerFormBean formBean = WebUtils.requestToBean(request, FiveRadioAnswerFormBean.class);
        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup1")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup2")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup3")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup4")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup5")));

        saveFiveRadioAnswer(request, response, formBean, 26);

        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup6")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup7")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup8")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup9")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup10")));

        saveFiveRadioAnswer(request, response, formBean,31);

        System.out.println("formBean: "+formBean.toString());
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
