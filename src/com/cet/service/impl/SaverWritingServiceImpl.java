
package com.cet.service.impl;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.dao.IUserDao;
import com.cet.dao.impl.UserDaoImpl;
import com.cet.domain.Page;
import com.cet.domain.User;
import com.cet.exception.UserExistException;
import com.cet.service.ISaverWritingService;
import com.cet.dao.ISaverWritingDao;
import com.cet.dao.impl.SaverWrtingDaoImpl;

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
