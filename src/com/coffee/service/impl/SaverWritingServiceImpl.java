
package com.coffee.service.impl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.coffee.dao.IUserDao;
import com.coffee.dao.impl.UserDaoImpl;
import com.coffee.domain.Page;
import com.coffee.domain.User;
import com.coffee.exception.UserExistException;
import com.coffee.service.ISaverWritingService;
import com.coffee.dao.ISaverWritingDao;
import com.coffee.dao.impl.SaverWrtingDaoImpl;

public class SaverWritingServiceImpl implements ISaverWritingService {
    private ISaverWritingDao saverDao = new SaverWrtingDaoImpl();

    @Override
    public void save(String q, int startAnswerNum, int userId, int paperId) throws SQLException
    {
        saverDao.insert(q, startAnswerNum, userId, paperId);
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
