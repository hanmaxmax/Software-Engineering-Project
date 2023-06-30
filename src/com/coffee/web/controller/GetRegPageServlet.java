package com.coffee.web.controller;

import com.coffee.domain.*;
import com.coffee.service.IOrderService;
import com.coffee.service.IOrderVOService;
import com.coffee.service.IStudentService;
import com.coffee.service.IUserService;
import com.coffee.service.impl.OrderServiceImpl;
import com.coffee.service.impl.OrderVOServiceImpl;
import com.coffee.service.impl.StudentRegisterImpl;
import com.coffee.service.impl.UserServiceImpl;
import com.coffee.util.PageUtils;

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
            request.getRequestDispatcher("/pages/user/registration-his.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}

