package com.cet.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.BeanProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.RowProcessor;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.cet.dao.IAdminDao;
import com.cet.domain.Admin;
import com.cet.util.ConnectionContext;

/**
 * @ClassName: AdminDaoImpl
 * @Description:DAO层,IAdminDao的实现类，提供基本的CRUD（增删改）功能。
 * 
 * @author: K
 */
public class AdminDaoImpl implements IAdminDao {

	@Override
	public List<Admin> findALL() throws SQLException {
		QueryRunner qr = new QueryRunner();
		BeanProcessor bean = new GenerousBeanProcessor();
		RowProcessor processor = new BasicRowProcessor(bean);
		String sql = "select * from `admin`";

		return (List<Admin>) qr.query(ConnectionContext.getInstance().getConnection(), sql,
				new BeanListHandler<Admin>(Admin.class, processor));
	}

	@Override
	public Admin find(String account) throws SQLException {
		QueryRunner qr = new QueryRunner();
		BeanProcessor bean = new GenerousBeanProcessor();
		RowProcessor processor = new BasicRowProcessor(bean);
		String sql = "select * from `admin` where account=? AND manager = 0";
		System.out.println("===================== teacher sql find ");

		return (Admin) qr.query(ConnectionContext.getInstance().getConnection(), sql, account,
				new BeanHandler<Admin>(Admin.class, processor));
	}

	public Admin find_manager(String account) throws SQLException {
		QueryRunner qr = new QueryRunner();
		BeanProcessor bean = new GenerousBeanProcessor();
		RowProcessor processor = new BasicRowProcessor(bean);
		String sql = "select * from `admin` where account=? AND manager = 1";
		System.out.println("===================== manager sql find");

		return (Admin) qr.query(ConnectionContext.getInstance().getConnection(), sql, account,
				new BeanHandler<Admin>(Admin.class, processor));
	}

	@Override
	public void update(Admin admin) throws SQLException {
		QueryRunner qr = new QueryRunner();
		String sql = "update `admin` set password=? where account=?";
		Object params[] = { admin.getPassword(), admin.getAccount() };

		qr.update(ConnectionContext.getInstance().getConnection(), sql, params);
	}

}
