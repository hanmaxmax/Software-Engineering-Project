package com.coffee.service.impl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.coffee.dao.IUserDao;
import com.coffee.dao.impl.UserDaoImpl;
import com.coffee.domain.Page;
import com.coffee.domain.User;
import com.coffee.exception.UserExistException;
import com.coffee.service.ISaverFiveRadioService;
import com.coffee.dao.ISaverFiveRadioDao;
import com.coffee.dao.impl.SaverFiveRadioDaoImpl;

public class SaverFiveRadioServiceImpl implements ISaverFiveRadioService{
    private ISaverFiveRadioDao saverDao = new SaverFiveRadioDaoImpl();

    @Override
    public void save(int q1, int q2, int q3, int q4, int q5, int startAnswerNum) throws SQLException
    {
        saverDao.insert(q1, q2, q3, q4, q5, startAnswerNum);
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
