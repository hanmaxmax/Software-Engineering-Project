package com.coffee.dao;

import java.sql.SQLException;
import java.util.List;

import com.coffee.domain.*;
public interface ISaverFiveRadioDao {
    void insert(int q1, int q2, int q3, int q4, int q5, int startAnswerNum) throws SQLException;
}
