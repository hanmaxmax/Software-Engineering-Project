package com.coffee.web.controller;

import com.coffee.domain.Registration;
import com.coffee.domain.User;
import com.coffee.service.IStudentService;
import com.coffee.service.impl.StudentRegisterImpl;
import com.coffee.util.WebUtils;
import com.coffee.web.formbean.StudentRegisterBean;

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
@WebServlet(name = "PaymentTwoServlet", urlPatterns = "/servlet/paymenttwoServlet")
public class PaymentTwoServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forwardUrl = request.getParameter("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        try {
            int regid = Integer.parseInt(request.getParameter("regid"));
            // 在控制台打印表单字段的值
            //System.out.println("Regid: " + regid);
            Registration re = new Registration();
            re.setRegid(regid);
            //studentService.payforreg(re);
            //request.setAttribute("paymentSuccess", "支付成功！！");
            //request.getRequestDispatcher(forwardUrl).forward(request, response);
        } catch (Exception e) {
            //request.setAttribute("message", "支付失败！！");
            //request.getRequestDispatcher("/message.jsp").forward(request, response);
            throw new RuntimeException(e);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}