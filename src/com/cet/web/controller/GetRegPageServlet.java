package com.cet.web.controller;

import com.cet.domain.*;
import com.cet.service.IOrderService;
import com.cet.service.IOrderVOService;
import com.cet.service.IStudentService;
import com.cet.service.IUserService;
import com.cet.service.impl.OrderServiceImpl;
import com.cet.service.impl.OrderVOServiceImpl;
import com.cet.service.impl.StudentRegisterImpl;
import com.cet.service.impl.UserServiceImpl;
import com.cet.util.PageUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * 用于获得学生报名信息的分页，每次切换页面都要访问；
 *
 * @author ggg
 */
@WebServlet(name = "GetRegPageServlet", urlPatterns = "/servlet/getRegPageServlet")
public class GetRegPageServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("------------GetRegPageServlet work start-----------");
        String forwardUrl = (String) request.getAttribute("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        // 从session中直接取出user
        User user = (User) request.getSession().getAttribute("user");
        int userid=user.getUserId();
        try {
            // 获取该用户所有的报名信息
            List<Registration> regs = studentService.getregs(userid);
            for (Registration registration : regs) {
                System.out.println(registration);
            }
            request.setAttribute("RegsList", regs);
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

