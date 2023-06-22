package com.coffee.dao.impl;

import java.sql.SQLException;
import java.util.*;

import com.coffee.dao.ISaverFiveRadioDao;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;

import com.coffee.dao.IUserDao;
import com.coffee.domain.User;
import com.coffee.util.ConnectionContext;

public class SaverFiveRadioDaoImpl implements ISaverFiveRadioDao {
    public void insert(int q1, int q2, int q3, int q4, int q5, int startAnswerNum, int userId, int paperId) throws SQLException
    {
//        System.out.println("Dao Impl check answers");
//        System.out.println("startAnswerNum = " + startAnswerNum + "; Q1 = " + q1 + "; Q2 = " + q2
//                + "; Q3 = " + q3 + "; Q4=  " + q4 + "; Q5 = " + q5);
//        QueryRunner runner = new QueryRunner();
//        String sql = "insert into `fiveradio1`(startAnswerNum, q1, q2, q3, q4, q5, userId, paperId) values(?, ?, ?, ?, ?, ?, ?, ?)";
//        Object[] params = { startAnswerNum, q1, q2, q3, q4, q5, userId, paperId };
//
//        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
//
//
//





        System.out.println("Dao Impl check answers");
        System.out.println("startAnswerNum = " + startAnswerNum + "; Q1 = " + q1 + "; Q2 = " + q2
                + "; Q3 = " + q3 + "; Q4 = " + q4 + "; Q5 = " + q5);

        QueryRunner runner = new QueryRunner();
        String selectSql = "SELECT * FROM fiveradio1 WHERE startAnswerNum = ? AND userId = ? AND paperId = ?";
        String deleteSql = "DELETE FROM fiveradio1 WHERE startAnswerNum = ? AND userId = ? AND paperId = ?";
        Object[] selectParams = { startAnswerNum, userId, paperId };
        Object[] deleteParams = { startAnswerNum, userId, paperId };

        try {
            // Check if a matching tuple exists
            ResultSetHandler<Integer> scalarHandler = new ScalarHandler<>();
            Integer resultSet = runner.query(ConnectionContext.getInstance().getConnection(), selectSql, scalarHandler, selectParams);
            if (resultSet!=null) {
                // Delete the tuple
                runner.update(ConnectionContext.getInstance().getConnection(), deleteSql, deleteParams);
                System.out.println("Matching tuple found and deleted.");
            }
            System.out.println("No matching tuple found. Proceeding with insertion.");
            // Insert the new tuple
            String insertSql = "INSERT INTO `fiveradio1`(startAnswerNum, q1, q2, q3, q4, q5, userId, paperId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            Object[] params = { startAnswerNum, q1, q2, q3, q4, q5, userId, paperId };
            runner.update(ConnectionContext.getInstance().getConnection(), insertSql, params);

        } catch (SQLException e) {
            e.printStackTrace();
        }














    }
}




