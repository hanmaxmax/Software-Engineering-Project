package com.cet.web.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


@WebServlet(name = "SaveScoreServlet", urlPatterns = "/servlet/saveScoreServlet")
public class SaveScoreServlet extends HttpServlet {


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		System.out.println("------------SaveScoreServlet start-----------");
		String url="jdbc:mysql://localhost:3306/cet?serverTimezone=Asia/Shanghai&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";

		String username = "root";
		String password = "123456";
		String score = request.getParameter("score");
		String userId = request.getParameter("userId");
		String paperId = request.getParameter("paperId");


		String query = "UPDATE textanswer SET score = " + score + ", marked = 1 " +
				"WHERE userId = " + userId + " AND paperId = " + paperId;

		System.out.println(query);


		try{
			Connection conn = DriverManager.getConnection(url, username, password);
//			Statement statement = conn.createStatement();
//			ResultSet resultSet = statement.executeQuery(query);
			PreparedStatement statement = conn.prepareStatement(query);
			statement.executeUpdate();

			statement.close();
			conn.close();

		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/teacher/revise-page.jsp");
		dispatcher.forward(request, response);

	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
