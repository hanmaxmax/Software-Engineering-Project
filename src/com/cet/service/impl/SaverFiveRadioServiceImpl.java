package com.cet.service.impl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.dao.IUserDao;
import com.cet.dao.impl.UserDaoImpl;
import com.cet.domain.Page;
import com.cet.domain.User;
import com.cet.exception.UserExistException;
import com.cet.service.ISaverFiveRadioService;
import com.cet.dao.ISaverFiveRadioDao;
import com.cet.dao.impl.SaverFiveRadioDaoImpl;

public class SaverFiveRadioServiceImpl implements ISaverFiveRadioService{
    private ISaverFiveRadioDao saverDao = new SaverFiveRadioDaoImpl();

    @Override
    public void save(int q1, int q2, int q3, int q4, int q5, int startAnswerNum, int userId, int paperId) throws SQLException
    {
        saverDao.insert(q1, q2, q3, q4, q5, startAnswerNum, userId, paperId);
    }

    @Override
    public Page<User> get(int begin, int pageSize) throws SQLException {

        return null;
    }

    @Override
    public Page<User> get(User t, int begin, int pageSize) throws SQLException {
        return this.get(begin, pageSize);
    }
}
