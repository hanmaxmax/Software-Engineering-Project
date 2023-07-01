package com.cet.dao.impl;

import java.sql.SQLException;
import java.util.*;

import com.cet.dao.ISaverFiveRadioDao;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;

import com.cet.dao.IUserDao;
import com.cet.domain.User;
import com.cet.util.ConnectionContext;

public class SaverFiveRadioDaoImpl implements ISaverFiveRadioDao {
    public void insert(int q1, int q2, int q3, int q4, int q5, int startAnswerNum, int userId, int paperId) throws SQLException
    {
        System.out.println("Dao Impl check answers");
        System.out.println("startAnswerNum = " + startAnswerNum + "; Q1 = " + q1 + "; Q2 = " + q2
                + "; Q3 = " + q3 + "; Q4=  " + q4 + "; Q5 = " + q5);
        QueryRunner runner = new QueryRunner();
        String sql = "insert into `fiveradio1`(startAnswerNum, q1, q2, q3, q4, q5, userId, paperId) values(?, ?, ?, ?, ?, ?, ?, ?)";
        Object[] params = { startAnswerNum, q1, q2, q3, q4, q5, userId, paperId };

        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
    }
}
