package com.cet.dao;

import java.sql.SQLException;
import java.util.List;

import com.cet.domain.*;
public interface ISaverFiveRadioDao {
    void insert(int q1, int q2, int q3, int q4, int q5, int startAnswerNum, int userId, int paperId) throws SQLException;
}
