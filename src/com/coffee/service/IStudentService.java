package com.coffee.service;

import com.coffee.domain.Registration;
import com.coffee.exception.UserExistException;

import java.sql.SQLException;
import java.util.List;

/**
 * @InterfaceName: IStudentService
 * @Description:提供学生报名、缴费、准考证生成、打印准考证、查询成绩
 * 20230625
 * @author: ggg
 */
public interface IStudentService{
	/**
	 * 提供报名
	 * @param re
	 * @throws UserExistException
	 */
	void register(Registration re) throws Exception;


	/**
	 * 报名信息提取
	 * @param re
	 * @throws Exception
	 */
	Registration getre(int re) throws Exception;

	/**
	 * 付款
	 * @param re
	 * @throws Exception
	 */
	void pay(Registration re) throws Exception;

	/**
	 * 获取所有报名信息
	 * @param userid
	 * @throws Exception
	 */
    List<Registration> getregs(int userid) throws Exception;

	/**
	 * 查找报名序号付款
	 * @param re
	 * @throws Exception
	 */
	Registration payforreg(int re) throws Exception;
}