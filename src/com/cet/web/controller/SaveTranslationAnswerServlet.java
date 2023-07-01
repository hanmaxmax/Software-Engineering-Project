package com.cet.web.controller;

import java.io.*;
import java.sql.SQLException;

import com.cet.domain.Admin;
import com.cet.domain.User;
import com.cet.service.IAdminService;
import com.cet.service.IUserService;
import com.cet.service.impl.AdminServiceImpl;
import com.cet.service.impl.SaverWritingServiceImpl;
import com.cet.service.impl.UserServiceImpl;
import com.cet.util.WebUtils;
import com.cet.web.formbean.FiveRadioAnswerFormBean;
import com.cet.web.formbean.LoginFormBean;
import com.cet.web.formbean.RegisterFormBean;
import com.cet.service.ISaverWritingService;
import com.cet.service.impl.SaverWritingServiceImpl;
import com.cet.web.formbean.TranslationAnswerBean;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SaveTranslationAnswerServlet", urlPatterns = "/servlet/SaveTranslationAnswerServlet")
public class SaveTranslationAnswerServlet extends HttpServlet {
    private ISaverWritingService SaverService = new SaverWritingServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");

        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("翻译题结果是:"+request.getParameter("translation")+"<br>");


        TranslationAnswerBean translationAnswerBean = WebUtils.requestToBean(request, TranslationAnswerBean.class);
        translationAnswerBean.setQuestion(request.getParameter("translation"));
        System.out.println("translationAnswerBean: "+translationAnswerBean.toString());
        saveTranslationAnswer(request, response, translationAnswerBean);
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

    private void saveTranslationAnswer(HttpServletRequest request, HttpServletResponse response, TranslationAnswerBean translationAnswerBean)
            throws ServletException, IOException {
        try {
            User user = (User) request.getSession().getAttribute("user");
            int userId = user.getUserId();
            SaverService.save(translationAnswerBean.getQuestion(),57, userId,1);
            System.out.println("Success save translation answer");
            System.out.println(translationAnswerBean.toString());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}

