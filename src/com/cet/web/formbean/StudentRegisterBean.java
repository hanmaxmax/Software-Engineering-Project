package com.cet.web.formbean;

import java.util.HashMap;
import java.util.Map;

/**
 * 封装学生报名表单
 * 20230625
 * @author ggg
 *
 */
public class StudentRegisterBean {
    private String username;
    private String identificationid;
    private String tel;
    private String examposition;
    private int examtime;

    public int getExamtime() {
        return examtime;
    }

    public void setExamtime(int examtime) {
        this.examtime = examtime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIdentificationid() {
        return identificationid;
    }

    public void setIdentificationid(String identificationid) {
        this.identificationid = identificationid;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getExamposition() {
        return examposition;
    }

    public void setExamposition(String examposition) {
        this.examposition = examposition;
    }

    @Override
    public String toString() {
        return "StudentRegisterBean{" +
                "username='" + username + '\'' +
                ", identificationid='" + identificationid + '\'' +
                ", tel='" + tel + '\'' +
                ", examposition='" + examposition + '\'' +
                '}';
    }
}
