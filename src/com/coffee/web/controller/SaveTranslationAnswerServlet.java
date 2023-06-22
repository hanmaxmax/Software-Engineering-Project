package com.coffee.web.controller;

import java.io.*;
import java.sql.SQLException;

import com.coffee.domain.Admin;
import com.coffee.domain.User;
import com.coffee.service.IAdminService;
import com.coffee.service.IUserService;
import com.coffee.service.impl.AdminServiceImpl;
import com.coffee.service.impl.SaverWritingServiceImpl;
import com.coffee.service.impl.UserServiceImpl;
import com.coffee.util.WebUtils;
import com.coffee.web.formbean.FiveRadioAnswerFormBean;
import com.coffee.web.formbean.LoginFormBean;
import com.coffee.web.formbean.RegisterFormBean;
import com.coffee.service.ISaverWritingService;
import com.coffee.service.impl.SaverWritingServiceImpl;
import com.coffee.web.formbean.TranslationAnswerBean;

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

    private void saveTranslationAnswer(HttpServletRequest request, HttpServletResponse response, TranslationAnswerBean translationAnswerBean)
            throws ServletException, IOException {
        try {
            User user = (User) request.getSession().getAttribute("user");
            int userId = user.getUserId();
            SaverService.save(translationAnswerBean.getQuestion(),1, userId,1);
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

