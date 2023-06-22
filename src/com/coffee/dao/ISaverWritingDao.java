package com.coffee.dao;

import java.sql.SQLException;
import java.util.List;

import com.coffee.domain.*;
public interface ISaverWritingDao {
    void insert(String q, int startAnswerNum) throws SQLException;
}
