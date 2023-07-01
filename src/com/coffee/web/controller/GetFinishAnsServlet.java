package com.coffee.web.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@WebServlet(name = "GetFinishAnsServlet", urlPatterns = "/servlet/getFinishAnsServlet")
public class GetFinishAnsServlet extends HttpServlet {


	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<TextAnswer> answerList = new ArrayList<>();

		System.out.println("------------GetFinishAnsServlet work start-----------");
		String url="jdbc:mysql://localhost:3306/cet?serverTimezone=Asia/Shanghai&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";

		String username = "root";
		String password = "123456";
		String query = "SELECT * FROM textanswer WHERE marked = 1";


		try{
			Connection conn = DriverManager.getConnection(url, username, password);
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			// 遍历结果集并提取数据
			while (resultSet.next()) {
				int startAnswerNum = resultSet.getInt("startAnswerNum");
				int userId = resultSet.getInt("userId");
				int paperId = resultSet.getInt("paperId");
				double score = resultSet.getDouble("score");
				boolean marked = resultSet.getBoolean("marked");
				String content = resultSet.getString("q");
				System.out.println(content);


				// 创建 TextAnswer 对象并填充数据
				TextAnswer textAnswer = new TextAnswer(startAnswerNum, userId, paperId, score, content, marked);

				// 将对象添加到列表中
				answerList.add(textAnswer);
			}

			resultSet.close();
			statement.close();
			conn.close();

		}catch(SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}

		// 将 answerList 设置到请求作用域中
		request.setAttribute("finishAnswerList", answerList);
		request.getRequestDispatcher("/pages/admin/manage-items2.jsp").forward(request, response);

	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
