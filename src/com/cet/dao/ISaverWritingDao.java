package com.cet.dao;

import java.sql.SQLException;
import java.util.List;

import com.cet.domain.*;
public interface ISaverWritingDao {
    void insert(String q, int startAnswerNum, int userId, int paperId) throws SQLException;
}
