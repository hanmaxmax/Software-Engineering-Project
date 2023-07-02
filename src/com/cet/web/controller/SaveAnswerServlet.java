package com.cet.web.controller;

import java.io.*;
import java.sql.SQLException;

//import javax.servlet.*;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.*;

import com.cet.domain.Admin;
import com.cet.domain.User;
import com.cet.service.IAdminService;
import com.cet.service.IUserService;
import com.cet.service.impl.AdminServiceImpl;
import com.cet.service.impl.UserServiceImpl;
import com.cet.util.WebUtils;
import com.cet.web.formbean.FiveRadioAnswerFormBean;
import com.cet.web.formbean.LoginFormBean;
import com.cet.web.formbean.RegisterFormBean;
import com.cet.service.ISaverFiveRadioService;
import com.cet.service.impl.SaverFiveRadioServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 答案比对
 * 20230628
 * @author zjy
 */

@WebServlet(name = "SaveAnswerServlet", urlPatterns = "/servlet/saveAnswerServlet")
public class SaveAnswerServlet extends HttpServlet {
    private ISaverFiveRadioService SaverService = new SaverFiveRadioServiceImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");
        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("单选题46结果是:" + request.getParameter("RadioGroup1") + "<br>");
        System.out.println("单选题47结果是:" + request.getParameter("RadioGroup2") + "<br>");
        System.out.println("单选题48结果是:" + request.getParameter("RadioGroup3") + "<br>");
        System.out.println("单选题49结果是:" + request.getParameter("RadioGroup4") + "<br>");
        System.out.println("单选题50结果是:" + request.getParameter("RadioGroup5") + "<br>");
        System.out.println("作文题结果是:" + request.getParameter("writing") + "<br>");
        FiveRadioAnswerFormBean formBean = WebUtils.requestToBean(request, FiveRadioAnswerFormBean.class);
        formBean.setQuestion1(Integer.parseInt(request.getParameter("RadioGroup1")));
        formBean.setQuestion2(Integer.parseInt(request.getParameter("RadioGroup2")));
        formBean.setQuestion3(Integer.parseInt(request.getParameter("RadioGroup3")));
        formBean.setQuestion4(Integer.parseInt(request.getParameter("RadioGroup4")));
        formBean.setQuestion5(Integer.parseInt(request.getParameter("RadioGroup5")));
        System.out.println("formBean: " + formBean.toString());
        saveFiveRadioAnswer(request, response, formBean);
        // 弹框提示保存成功？
    }

    public String codeToString(String str)  // 处理中文字符串的函数
    {
        String s = str;
        try {
            byte tempB[] = s.getBytes("ISO-8859-1");
            s = new String(tempB);
            return s;
        } catch (Exception e) {
            return s;
        }
    }

    private void saveFiveRadioAnswer(HttpServletRequest request, HttpServletResponse response, FiveRadioAnswerFormBean formBean)
            throws ServletException, IOException {
        try {
            User user = new User();
            request.getSession().setAttribute("user", user);
            SaverService.save(formBean.getQuestion1(), formBean.getQuestion2(), formBean.getQuestion3(),
                    formBean.getQuestion4(), formBean.getQuestion5(), 47, user.getUserId(), 1);
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
