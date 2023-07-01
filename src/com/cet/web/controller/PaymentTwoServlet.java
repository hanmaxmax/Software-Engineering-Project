package com.cet.web.controller;

import com.cet.domain.Registration;
import com.cet.domain.User;
import com.cet.service.IStudentService;
import com.cet.service.impl.StudentRegisterImpl;
import com.cet.util.WebUtils;
import com.cet.web.formbean.StudentRegisterBean;

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
            Registration re = new Registration();
            re.setRegid(regid);

            re=studentService.payforreg(re.getRegid());
            if(re.getPaymentstatus()==0){
                request.setAttribute("paymentSuccess", "支付跳转！！");
                request.getSession().setAttribute("registration",re);
                request.getRequestDispatcher("/payment.jsp").forward(request, response);
            }
            else {
                request.setAttribute("paymentError", "重复缴费！！");
                request.getRequestDispatcher(forwardUrl).forward(request, response);
            }
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