package com.coffee.web.controller;
//<%@ page import="com.coffee.service.IAutoMarkingService" %>
//<%@ page import="com.coffee.service.impl.AutoMarkingServiceImpl"%>
import com.coffee.domain.User;
import com.coffee.service.impl.AutoMarkingServiceImpl;
import com.coffee.service.IAutoMarkingService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SubmitAnswerServlet", urlPatterns = "/servlet/SubmitAnswerServlet")
public class SubmitAnswerServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forwardUrl = request.getParameter("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        AutoMarkingServiceImpl autom = new AutoMarkingServiceImpl();
        User user = (User) request.getSession().getAttribute("user");
        int userId = user.getUserId();
        double ret = autom.getObjScore(userId,1);
        response.sendRedirect("/index.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
