package com.cet.service.impl;

import java.sql.SQLException;

import com.cet.dao.IAdminDao;
import com.cet.dao.impl.AdminDaoImpl;
import com.cet.domain.Admin;
import com.cet.service.IAdminService;

/**
 * @InterfaceName: AdminServiceImpl
 * @Description:Service层,IAdminServiceI的实现类，提供管理员登录等服务。
 * 
 * @author: K
 */
public class AdminServiceImpl implements IAdminService {
	private IAdminDao adminDao = new AdminDaoImpl();

	@Override
	public Admin login(String account, String password) throws SQLException {
		Admin admin = adminDao.find(account);
		// 没找到，则user=null，返回空值。
		// 密码不匹配，同样也为空值。
		if (admin == null || admin.getPassword().equals(password)) {
			return admin;
		} else {
			return null;
		}
	}

	public Admin login_manager(String account, String password) throws SQLException {
		Admin admin = adminDao.find_manager(account);
		// 没找到，则user=null，返回空值。
		// 密码不匹配，同样也为空值。
		if (admin == null || admin.getPassword().equals(password)) {
			return admin;
		} else {
			return null;
		}
	}
}
