package com.cet.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.domain.*;
import com.cet.exception.*;
public interface ISaverFiveRadioService extends IPageService<User> {
    void save(int q1, int q2, int q3, int q4, int q5, int startAnswerNum, int userId, int paperId) throws SQLException;
}