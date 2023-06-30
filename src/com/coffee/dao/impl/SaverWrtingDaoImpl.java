

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
    public void insert(String q, int startAnswerNum) throws SQLException
    {
        System.out.println("Dao Impl check answers");
        System.out.println("startAnswerNum = " + startAnswerNum + "; Q = " + q);
        QueryRunner runner = new QueryRunner();
        String sql = "insert into `textanswer`(startAnswerNum, q) values(?, ?)";
        Object[] params = { startAnswerNum, q};

        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
    }
}