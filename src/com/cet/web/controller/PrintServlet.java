package com.cet.web.controller;

import com.cet.domain.Registration;
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
@WebServlet(name = "PrintServlet", urlPatterns = "/servlet/printServlet")
public class PrintServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forwardUrl = request.getParameter("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);
        try {
            int regid = Integer.parseInt(request.getParameter("regid"));
            Registration re = new Registration();
            re.setRegid(regid);

            re=studentService.payforreg(re.getRegid());
            if(re.getPaymentstatus()==1){
                request.setAttribute("printSuccess", "打印成功！！");
                request.getSession().setAttribute("registration",re);
                request.getRequestDispatcher("/pages/user/print-show.jsp").forward(request, response);
            }
            else {
                request.setAttribute("printError", "尚未缴费！！");
                request.getRequestDispatcher(forwardUrl).forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("message", "打印失败！！");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            throw new RuntimeException(e);
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}