package com.coffee.dao;

import com.coffee.domain.Registration;
import com.coffee.domain.Score;

import java.sql.SQLException;
import java.util.List;

/**
 * @InterfaceName: StudentRegisterImpl
 * @Description:提供学生报名、缴费、准考证生成、打印准考证、查询成绩
 * 20230625
 * @author: ggg
 */
public interface IStudentDao {
    Registration find(String identificationid) throws SQLException;

    void insert(Registration re) throws SQLException;

    Registration findusrid(int id) throws SQLException;

    Registration findregid(int regid) throws SQLException;

    void pay(Registration re) throws SQLException;

    List<Registration> findregs(int userid) throws SQLException;

    void payforreg(Registration re) throws SQLException;

    Score findscore(int userId) throws SQLException;
}
