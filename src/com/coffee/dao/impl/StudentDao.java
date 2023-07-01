package com.coffee.dao.impl;

import com.coffee.dao.IStudentDao;
import com.coffee.domain.Order;
import com.coffee.domain.Registration;
import com.coffee.domain.User;
import com.coffee.util.ConnectionContext;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * @InterfaceName: StudentRegisterImpl
 * @Description:提供学生报名、缴费、准考证生成、打印准考证、查询成绩
 * 20230625
 * @author: ggg
 */
public class StudentDao implements IStudentDao {
    @Override
    public Registration find(String identificationid) throws SQLException {
        QueryRunner qr = new QueryRunner();
        BeanProcessor bean = new GenerousBeanProcessor();
        RowProcessor processor = new BasicRowProcessor(bean);
        String sql = "select * from `registration` where identification_id=?";

        return (Registration) qr.query(ConnectionContext.getInstance().getConnection(), sql, identificationid,
                new BeanHandler<Registration>(Registration.class, processor));
    }

    @Override
    public void insert(Registration re) throws SQLException {
        QueryRunner runner = new QueryRunner();
        String sql = "insert into `registration`(user_id, user_name, identification_id,payment_status,exam_time, exam_position, tel) values(?, ?, ?, ?, ?, ?, ?)";
        Object[] params = {re.getUserId(),re.getUsername(), re.getIdentificationid(),0, re.getExamtime(),re.getExamposition(), re.getTel() };
        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
    }

    @Override
    public Registration findusrid(int id) throws SQLException {
        QueryRunner qr = new QueryRunner();
        BeanProcessor bean = new GenerousBeanProcessor();
        RowProcessor processor = new BasicRowProcessor(bean);
        String sql = "select * from `registration` where user_id=?";

        return (Registration) qr.query(ConnectionContext.getInstance().getConnection(), sql, id,
                new BeanHandler<Registration>(Registration.class, processor));
    }

    @Override
    public Registration findregid(int id) throws SQLException {
        QueryRunner qr = new QueryRunner();
        BeanProcessor bean = new GenerousBeanProcessor();
        RowProcessor processor = new BasicRowProcessor(bean);
        String sql = "select * from `registration` where reg_id=?";

        return (Registration) qr.query(ConnectionContext.getInstance().getConnection(), sql, id,
                new BeanHandler<Registration>(Registration.class, processor));
    }

    @Override
    public void pay(Registration re) throws SQLException {
        QueryRunner runner = new QueryRunner();
        System.out.println(re.getExamid());
        String sql = "update `registration` set payment_status = '1' , exam_id =? where identification_id =?";
        Object[] params = {re.getExamid(),re.getIdentificationid()};
        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
    }

    @Override
    public List<Registration> findregs(int userid) throws SQLException {
        QueryRunner qr = new QueryRunner();
        BeanProcessor bean = new GenerousBeanProcessor();
        RowProcessor processor = new BasicRowProcessor(bean);
        String sql = "select * from `registration` where user_id=?";

        return (List<Registration>) qr.query(ConnectionContext.getInstance().getConnection(), sql,userid,
                new BeanListHandler<Registration>(Registration.class, processor));
    }

    @Override
    public void payforreg(Registration re) throws SQLException {
        QueryRunner runner = new QueryRunner();
        System.out.println(re.getExamid());
        String sql = "update `registration` set payment_status = '1' , exam_id =? where reg_id =?";
        Object[] params = {re.getExamid(),re.getRegid()};
        runner.update(ConnectionContext.getInstance().getConnection(), sql, params);
    }
}
