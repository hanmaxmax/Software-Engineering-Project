package com.cet.web.controller;

import com.cet.domain.Registration;
import com.cet.domain.Score;
import com.cet.domain.User;
import com.cet.service.IStudentService;
import com.cet.service.impl.StudentRegisterImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetScoreServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("------------GetScoreServlet work start-----------");
        String forwardUrl = (String) request.getAttribute("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        // 从session中直接取出user
        User user = (User) request.getSession().getAttribute("user");
        int userid=user.getUserId();
        try {
            Score score=studentService.getscore(user.getUserId());
            System.out.println(score);
            request.setAttribute("ScoreItem", score);
            request.getRequestDispatcher(forwardUrl).forward(request, response);
        } catch (Exception e) {
            request.setAttribute("message", "对不起，查询失败！！");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            throw new RuntimeException(e);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
