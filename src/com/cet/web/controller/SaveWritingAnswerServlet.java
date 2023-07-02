package com.cet.web.controller;

import java.io.*;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

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
import com.cet.web.formbean.WritingAnswerBean;

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
        response.sendRedirect("/Exam/questions.jsp");
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
            SaverService.save(writingAnswerBean.getQuestion(),56, userId, 1);//【试卷号】
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
