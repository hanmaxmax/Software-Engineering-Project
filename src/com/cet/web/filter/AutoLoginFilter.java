package com.cet.web.filter;

import java.io.*;
import java.sql.SQLException;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.*;

import com.cet.domain.Admin;
import com.cet.domain.User;
import com.cet.service.IAdminService;
import com.cet.service.IUserService;
import com.cet.service.impl.AdminServiceImpl;
import com.cet.service.impl.UserServiceImpl;
import com.cet.util.WebUtils;

/*
@WebFilter(filterName = "AutoLoginFilter", urlPatterns = "/*", dispatcherTypes = { DispatcherType.REQUEST,
		DispatcherType.FORWARD })
		*/

public class AutoLoginFilter implements Filter {
	private IAdminService adminService = new AdminServiceImpl();
	private IUserService userService = new UserServiceImpl();

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// System.out.println("AutoLoginFilter.doFilter()---started---;");

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		// 如果已经登录了，就直接chain.doFilter(request, response)放行
		if (request.getSession().getAttribute("user") != null || request.getSession().getAttribute("admin") != null) {
			chain.doFilter(request, response);
			return;
		}

		// 1.得到用户带过来的autologin的cookie
		String value = null;
		Cookie cookies[] = request.getCookies();
		for (int i = 0; cookies != null && i < cookies.length; i++) {
			if (cookies[i].getName().equals("autologin")) {
				value = cookies[i].getValue();
			}
		}

		// 2.得到 cookie中的账号和密码和用户/管理员,没有的话filter的任务就结束了.
		if (value != null) {
			String account = value.split("\\.")[0];
			String password = value.split("\\.")[1];
			String status = value.split("\\.")[2];
			// 3.登录
			if (status.equals("user")) {
				userLogin(request, response, account, password);
			} else if (status.equals("admin")) {
				adminLogin(request, response, account, password);
			}
		}

		chain.doFilter(request, response);
		// System.out.println("AutoLoginFilter.doFilter()---finished---;");
	}

	private void userLogin(HttpServletRequest request, HttpServletResponse response, String account, String password) {
		User user = null;
		try {
			user = userService.login(account, password);
			System.out.println(user);
		} catch (SQLException e) {
		}

		if (user != null) {
			request.getSession().setAttribute("user", user);
		}
	}

	private void adminLogin(HttpServletRequest request, HttpServletResponse response, String account, String password) {
		Admin admin = null;
		Admin teacher = null;
		int type = 0;
		try {
			admin = adminService.login_manager(account, password);
			System.out.println(admin);
		} catch (SQLException e) {
		}
		if (admin != null)type=1;
		try {
			teacher = adminService.login(account, password);
			System.out.println(admin);
		} catch (SQLException e) {
		}
		if (teacher != null)type=2;

		if (type==1) {
			request.getSession().setAttribute("admin", admin);
		}else if(type == 2){
			request.getSession().setAttribute("teacher", teacher);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

	@Override
	public void destroy() {

	}
}