package com.coffee.service.impl;

import java.sql.SQLException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import com.coffee.dao.IStudentDao;
import com.coffee.dao.impl.StudentDao;
import com.coffee.domain.Registration;
import com.coffee.domain.User;
import com.coffee.exception.UserExistException;
import com.coffee.service.IStudentService;


/**
 * @InterfaceName: StudentRegisterImpl
 * @Description:提供学生报名、缴费、准考证生成、打印准考证、查询成绩
 * 20230625
 * @author: ggg
 */

public class StudentRegisterImpl implements IStudentService {
    // StudentDaoImpl中就涉及编写sql语句与数据库交互了
    private IStudentDao studentDao = new StudentDao();

    @Override
    public void register(Registration re) throws UserExistException, SQLException {
        if (studentDao.find(re.getIdentificationid()) != null) {
            throw new UserExistException("当前用户已报名！");
        }
        studentDao.insert(re);
    }

    @Override
    public Registration getre(int id) throws Exception {
        Registration re=new Registration();
        re = studentDao.findusrid(id);
        return re;
    }

    @Override
    public void pay(Registration re) throws SQLException {

        //生成准考证号(这个地方用hash生成，有可能发生碰撞，最好后面加一个检查过程)
        String s= String.format("%06d",re.getExamtime());
        s+=re.getExamroomid();
        String identityNumber = re.getIdentificationid();

        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = md.digest(identityNumber.getBytes());
            BigInteger hashNumber = new BigInteger(1, hashBytes);
            BigInteger uniqueNumber = hashNumber.mod(BigInteger.TEN.pow(10)); // 限制为 10 位数
            String uniqueNumberString = String.format("%010d", uniqueNumber); // 转换为 10 位的字符串
            //System.out.println(uniqueNumberString);
            s+=uniqueNumberString;
        } catch (NoSuchAlgorithmException e) {
            s+="0000000000";
            e.printStackTrace();
        }
        //System.out.println(s);
        re.setExamid(s);
        studentDao.pay(re);
    }

    @Override
    public List<Registration> getregs(int userid) throws Exception {
        List<Registration> regs=(ArrayList<Registration>) studentDao.findregs(userid);
        return regs;
    }

    @Override
    public Registration payforreg(int regid) throws Exception {
        Registration re=studentDao.findregid(regid);
        return re;
    }

}



