package com.cet.web.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "GetTextServlet", urlPatterns = "/servlet/getTextServlet")
public class GetTextServlet extends HttpServlet {


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		System.out.println("------------GetText start-----------");
		String url="jdbc:mysql://localhost:3306/cet?serverTimezone=Asia/Shanghai&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";

		String username = "root";
		String password = "123456";
		String content;
		String userId = request.getParameter("userId");
		String paperId = request.getParameter("paperId");


		String query = "SELECT q FROM textanswer WHERE userId = "+userId+" AND paperId = "+paperId;


		try{
			Connection conn = DriverManager.getConnection(url, username, password);
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			// 遍历结果集并提取数据
			resultSet.next();
			content = resultSet.getString("q");
			System.out.println(content);

			resultSet.close();
			statement.close();
			conn.close();

		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}

		// 将 answerList 设置到请求作用域中
		request.setAttribute("content", content);
		request.getRequestDispatcher("/grade.jsp").forward(request, response);
		
	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public String getData(String userId, String paperId) throws ServletException, IOException {


		System.out.println("------------GetText start-----------");
		String url="jdbc:mysql://localhost:3306/cet?serverTimezone=Asia/Shanghai&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";

		String username = "root";
		String password = "123456";
		String content;
//		String userId = request.getParameter("userId");
//		String paperId = request.getParameter("paperId");


		String query = "SELECT q FROM textanswer WHERE userId = "+userId+" AND paperId = "+paperId;


		try{
			Connection conn = DriverManager.getConnection(url, username, password);
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			// 遍历结果集并提取数据
			resultSet.next();
			content = resultSet.getString("q");
			System.out.println(content);

			resultSet.close();
			statement.close();
			conn.close();

		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return content;
		// 将 answerList 设置到请求作用域中
//		request.setAttribute("content", content);
//		request.getRequestDispatcher("/grade.jsp").forward(request, response);

	}
}
