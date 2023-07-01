package com.cet.web.controller;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.cet.domain.Registration;
import com.cet.service.IStudentService;
import com.cet.service.impl.StudentRegisterImpl;
import org.apache.commons.beanutils.*;
import org.apache.commons.beanutils.locale.converters.*;

import com.cet.domain.*;
import com.cet.exception.UserExistException;
import com.cet.service.IUserService;
import com.cet.service.impl.UserServiceImpl;
import com.cet.util.*;
import com.cet.web.formbean.*;

/**
 * 考生报名
 * 20230625
 * @author ggg
 */
@WebServlet(name = "RegistrationServlet", urlPatterns = "/servlet/registrationServlet")
public class RegistrationServlet extends HttpServlet {
    private IStudentService studentService = new StudentRegisterImpl();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentRegisterBean formBean = WebUtils.requestToBean(request, StudentRegisterBean.class);
        System.out.println(formBean);

        String forwardUrl = request.getParameter("forwardUrl");
        System.out.println("forwardUrl: " + forwardUrl);

        Registration re=new Registration();
        try{
            //表单拷贝
            BeanUtils.copyProperties(re,formBean);

            // 从会话中检索数据
            User user = null;
            user = (User) request.getSession().getAttribute("user");
            //System.out.println(re.getExamtime());
            re.setUserId(user.getUserId());
            System.out.println(re.getUsername());
            studentService.register(re);
            request.setAttribute("registrationSuccess", "报名成功！！");
            request.getSession().setAttribute("registration",re);
            request.getRequestDispatcher(forwardUrl).forward(request, response);
        }catch(UserExistException e){
            request.setAttribute("registrationError", "请勿重复报名！！");
            request.getRequestDispatcher(forwardUrl).forward(request, response);
        }catch (Exception e) {
            request.setAttribute("message", "对不起，报名失败！！");
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            throw new RuntimeException(e);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}