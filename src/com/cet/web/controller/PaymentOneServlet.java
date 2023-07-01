package com.cet.web.controller;

import com.cet.domain.Registration;
import com.cet.domain.User;
import com.cet.service.IStudentService;
import com.cet.service.impl.StudentRegisterImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 用户支付
 *
 * @author ggg
 */
@WebServlet(name = "PaymentOneServlet", urlPatterns = "/servlet/paymentoneServlet")
public class PaymentOneServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forwardUrl = request.getParameter("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        try {
            // 从会话中检索数据
            User user = (User) request.getSession().getAttribute("user");
            Registration re = (Registration) request.getSession().getAttribute("registration");
            re.setPaymentstatus(1);
            studentService.pay(re);
            request.setAttribute("paymentSuccess", "支付成功！！");
            request.getRequestDispatcher(forwardUrl).forward(request, response);
        } catch (Exception e) {
            request.setAttribute("message", "支付失败！！");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            throw new RuntimeException(e);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
