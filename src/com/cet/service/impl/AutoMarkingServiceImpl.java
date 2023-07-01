
package com.cet.service.impl;

import com.cet.dao.IUserDao;
import com.cet.dao.impl.UserDaoImpl;
import com.cet.domain.Page;
import com.cet.domain.User;
import com.cet.exception.UserExistException;
import com.cet.service.IAutoMarkingService;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
//import javax.json.Json;
//import javax.json.JsonObject;
//import javax.json.JsonReader;
import java.io.FileReader;
import java.io.IOException;
/**
 * @InterfaceName: AutoMarkingServiceImpl
 * @Description:自动阅卷系统。
 */
public class AutoMarkingServiceImpl {
public double getObjScore(int userId,int paperId){
    System.out.println("TestPoint2");
    int[] columnValues = new int[55];
    double[] scores = new double[3];
    scores[0]=7.1;scores[1]=14.2;scores[2]=3.55;

//    double card_score = 0;
    double listening = 0;
    double reading = 0;
    Double transition = null;
    Double composition = null;

    String url="jdbc:mysql://localhost:3306/cet?serverTimezone=Asia/Shanghai&characterEncoding=utf-8&useSSL=false&allowPublicKeyRetrieval=true";

    String username = "root";
    String password = "123456";

    try {
        // 与数据库建立连接
        Connection connection = DriverManager.getConnection(url, username, password);

        // 创建SQL查询语句
        String sql = "SELECT * FROM Answer WHERE PaperId = 1";
        String sql2 = "SELECT startAnswerNum, q1, q2, q3, q4, q5 " +
                "FROM fiveradio1 " +
                "WHERE userId ="+userId+" AND paperId ="+paperId+
                " ORDER BY startAnswerNum ASC";

        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);

        resultSet.next();
        for (int i = 1; i <= 55; i++) {
            int columnValue = resultSet.getInt("q" + i);
            columnValues[i-1] = columnValue;
        }

        resultSet = statement.executeQuery(sql2);
        // 创建 PreparedStatement 对象
        PreparedStatement statement_ans = connection.prepareStatement(sql2);

        System.out.println("TestPoint3");
        // 设置参数

//            statement_ans.setInt(1, userId);
//            statement_ans.setInt(2, paperId);

        ResultSet resultSet_ans = statement_ans.executeQuery();
        double val = 0;
        int ans_idx = 0;
        while (resultSet_ans.next()) {
            int startAnswerNum = resultSet_ans.getInt("startAnswerNum");
            System.out.println("startAnswerNum: " + startAnswerNum);
            int q1 = resultSet_ans.getInt("q1");
            int q2 = resultSet_ans.getInt("q2");
            int q3 = resultSet_ans.getInt("q3");
            int q4 = resultSet_ans.getInt("q4");
            int q5 = resultSet_ans.getInt("q5");
            if(startAnswerNum<=15 || (startAnswerNum>=36&&startAnswerNum<=45))
                val = scores[0];
            else if(startAnswerNum>=46 || (startAnswerNum>=16&&startAnswerNum<=25))
                val = scores[1];
            else
                val = scores[2];
//                System.out.println("q1: " + q1+" "+columnValues[ans_idx+1-1]);
            if(startAnswerNum<=25){
                listening += (q1 == columnValues[ans_idx+1-1] ? val : 0.0);
                listening += (q2 == columnValues[ans_idx+2-1] ? val : 0.0);
                listening += (q3 == columnValues[ans_idx+3-1] ? val : 0.0);
                listening += (q4 == columnValues[ans_idx+4-1] ? val : 0.0);
                listening += (q5 == columnValues[ans_idx+5-1] ? val : 0.0);
            }else{
                reading += (q1 == columnValues[ans_idx+1-1] ? val : 0.0);
                reading += (q2 == columnValues[ans_idx+2-1] ? val : 0.0);
                reading += (q3 == columnValues[ans_idx+3-1] ? val : 0.0);
                reading += (q4 == columnValues[ans_idx+4-1] ? val : 0.0);
                reading += (q5 == columnValues[ans_idx+5-1] ? val : 0.0);
            }

            ans_idx+=5;
        }
        String query = "INSERT INTO score (userid, paperid, listening, reading, transition, composition, total) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement insert_statement = connection.prepareStatement(query);
        insert_statement.setInt(1, userId);
        insert_statement.setInt(2, paperId);
        insert_statement.setDouble(3, listening);
        insert_statement.setDouble(4, reading);
        insert_statement.setDouble(5, -1);
        insert_statement.setDouble(6, -1); // 使用 setNull 方法设置为空
        insert_statement.setDouble(7, -1); // 使用 setNull 方法设置为空

        // 执行插入
        int rowsAffected = insert_statement.executeUpdate();
        System.out.println(rowsAffected + " 行已插入。");
//        System.out.println("score: " + card_score);

        // 关闭连接和资源
        resultSet.close();
        statement.close();
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return 1;
}
//    public void loadAns(String path) {
////        String filePath = "resource/ans/22.12.json"; // 替换为实际的JSON文件路径
//        try (FileReader reader = new FileReader(path)) {
//            Gson gson = new Gson();
//            JsonObject jsonObject = gson.fromJson(reader, JsonObject.class);
//
//            for (int i = 1; i <= 50; i++) {
//                String answer = jsonObject.get(String.valueOf(i)).getAsString();
//                System.out.println("Question " + i + " Answer: " + answer);
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }


}

