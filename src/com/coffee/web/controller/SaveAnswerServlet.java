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

@WebServlet(name = "SaveAnswerServlet", urlPatterns = "/servlet/saveAnswerServlet")
public class SaveAnswerServlet extends HttpServlet {
    private ISaverFiveRadioService SaverService = new SaverFiveRadioServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");
//        PrintWriter out=response.getWriter();
//        System.out.println("<html><head><title>接收新用户注册</title></head> <body>");
//        System.out.println("这是新用户注册所提交的数据:<br>");
//        System.out.println("用户名是:"+codeToString(request.getParameter("username"))+"<br>");
//        System.out.println("密码是:"+codeToString(request.getParameter("userpassword"))+"<br>");
//        System.out.println("性别是:"+codeToString(request.getParameter("sex"))+"<br>");
//        System.out.println("出生年月是:"+request.getParameter("year")+request.getParameter("month")+request.getParameter("day")+"<br>");
//        System.out.println("电子邮箱是:"+request.getParameter("E-mail")+"<br>");
//        System.out.println("家庭住址是:"+codeToString(request.getParameter("address"))+"<br>");
        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("单选题46结果是:"+request.getParameter("RadioGroup1")+"<br>");
        System.out.println("单选题47结果是:"+request.getParameter("RadioGroup2")+"<br>");
        System.out.println("单选题48结果是:"+request.getParameter("RadioGroup3")+"<br>");
        System.out.println("单选题49结果是:"+request.getParameter("RadioGroup4")+"<br>");
        System.out.println("单选题50结果是:"+request.getParameter("RadioGroup5")+"<br>");
        System.out.println("作文题结果是:"+request.getParameter("writing")+"<br>");
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
        System.out.println("formBean: "+formBean.toString());
        saveFiveRadioAnswer(request, response, formBean);
        // 弹框提示保存成功？
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

    private void saveFiveRadioAnswer(HttpServletRequest request, HttpServletResponse response, FiveRadioAnswerFormBean formBean)
            throws ServletException, IOException {
        try {
            SaverService.save(formBean.getQuestion1(), formBean.getQuestion2(), formBean.getQuestion3(),
                    formBean.getQuestion4(), formBean.getQuestion5(), 47);
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
