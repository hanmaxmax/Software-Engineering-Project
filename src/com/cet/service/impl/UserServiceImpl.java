package com.cet.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cet.dao.IUserDao;
import com.cet.dao.impl.UserDaoImpl;
import com.cet.domain.Page;
import com.cet.domain.User;
import com.cet.exception.UserExistException;
import com.cet.service.IUserService;

/**
 * @InterfaceName: UserServiceImpl
 * @Description:Service层,IUserService的实现类，提供用户登录，注册，修改信息，删除，获取User的分页对象，检查账号是否存在等服务。
 * 
 * @author: K
 */
public class UserServiceImpl implements IUserService {
	// UserDaoImpl中就涉及编写sql语句与数据库交互了
	private IUserDao userDao = new UserDaoImpl();

	@Override
	public void register(User user) throws UserExistException, SQLException {
		if (userDao.find(user.getAccount()) != null) {
			throw new UserExistException("注册的用户名已存在！");
		}
		userDao.insert(user);
	}

	@Override
	public User login(String account, String password) throws SQLException {
		User user = userDao.find(account);
		// 没找到，则user=null，返回空值。
		// 密码不匹配，同样也为空值。
		if (user == null || user.getPassword().equals(password)) {
			return user;
		} else {
			return null;
		}
	}

	@Override
	public void update(User user) throws SQLException {
		userDao.update(user);
	}

	@Override
	public void delete(String account) throws SQLException {
		userDao.delete(account);
	}

	@Override
	public List<User> getAll() throws SQLException {
		List<User> users = (ArrayList<User>) userDao.findALL();
		return users;
	}

	@Override
	public Page<User> get(int begin, int pageSize) throws SQLException {
		List<User> users = (ArrayList<User>) userDao.find(begin, pageSize);

		Page<User> userPage = new Page<>();
		userPage.setList(users);
		userPage.setTotalCount(userDao.findALL().size());

		return userPage;
	}

	@Override
	public boolean checkExist(String account) throws SQLException {
		if (userDao.find(account) != null) {
			return true;
		} else {
			return false;
		}
	}

	/*
	 * 这里暂时没有特征搜索
	 */
	@Override
	public Page<User> get(User t, int begin, int pageSize) throws SQLException {
		return this.get(begin, pageSize);
	}

	@Override
	public String getAccount(int userId) throws SQLException {
		return userDao.findById(userId).getAccount();
	}

	@Override
	public int getId(String account) throws SQLException {
		return userDao.find(account).getUserId();
	}

}
