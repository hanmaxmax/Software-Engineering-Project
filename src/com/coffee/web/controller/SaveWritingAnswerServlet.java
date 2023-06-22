package com.coffee.web.controller;

import java.io.*;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

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
import com.coffee.web.formbean.WritingAnswerBean;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SaveWritingAnswerServlet", urlPatterns = "/servlet/SaveWritingAnswerServlet")
public class SaveWritingAnswerServlet extends HttpServlet {
    private ISaverWritingService SaverService = new SaverWritingServiceImpl();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=GB2312");

        System.out.println("------------SaveAnswerServlet work start-----------");
        System.out.println("作文结果是:"+request.getParameter("writing")+"<br>");


        WritingAnswerBean writingAnswerBean = WebUtils.requestToBean(request, WritingAnswerBean.class);
        writingAnswerBean.setQuestion(request.getParameter("writing"));
        System.out.println("writingAnswerBean: "+writingAnswerBean.toString());
        saveWritingAnswer(request, response, writingAnswerBean);
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

    private void saveWritingAnswer(HttpServletRequest request, HttpServletResponse response, WritingAnswerBean writingAnswerBean)
            throws ServletException, IOException {
        try {
            User user = (User) request.getSession().getAttribute("user");
            int userId = user.getUserId();
            SaverService.save(writingAnswerBean.getQuestion(),2, userId, 1);//【试卷号】
            System.out.println("Success save writing answer");
            System.out.println(writingAnswerBean.toString());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
