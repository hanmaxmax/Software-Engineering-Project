package com.coffee.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.coffee.domain.*;
import com.coffee.exception.*;
public interface ISaverFiveRadioService extends IPageService<User> {
    void save(int q1, int q2, int q3, int q4, int q5, int startAnswerNum) throws SQLException;
}
