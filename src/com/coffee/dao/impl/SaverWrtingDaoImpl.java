

package com.coffee.dao.impl;

import java.sql.SQLException;
import java.util.*;

import com.coffee.dao.ISaverWritingDao;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;

import com.coffee.dao.IUserDao;
import com.coffee.domain.User;
import com.coffee.util.ConnectionContext;

public class SaverWrtingDaoImpl implements ISaverWritingDao {
    public void insert(String q, int startAnswerNum, int userId, int paperId) throws SQLException
    {
//        System.out.println("Dao Impl check answers");
//        System.out.println("startAnswerNum = " + startAnswerNum + "; Q = " + q);
//        QueryRunner runner = new QueryRunner();
//        String sql = "insert into `textanswer`(startAnswerNum, q, userId, paperId) values(?, ?, ?, ?)";
//        Object[] params = { startAnswerNum, q, userId, paperId};
//
//        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
        /////////////////////////////
        System.out.println("Dao Impl check answers");
        System.out.println("startAnswerNum = " + startAnswerNum + "; Q = " + q);

        QueryRunner runner = new QueryRunner();
        String selectSql = "SELECT * FROM textanswer WHERE startAnswerNum = ? AND userId = ? AND paperId = ?";
        String deleteSql = "DELETE FROM textanswer WHERE startAnswerNum = ? AND userId = ? AND paperId = ?";
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
            System.out.println("After handling duplicated tuple. Proceeding with insertion.");
            // Insert the new tuple
            String insertSql = "INSERT INTO `textanswer`(startAnswerNum, q, userId, paperId,score,marked) values(?, ?, ?, ?,?,?)";
            Object[] params = { startAnswerNum, q, userId, paperId,0,0};
            runner.update(ConnectionContext.getInstance().getConnection(), insertSql, params);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}