package com.coffee.domain;

import java.io.Serializable;

/**
 * JavaBean:PO，报名表对应字段
 * 20230625
 * @author ggg
 */

public class Registration implements Serializable{
    private int regid;
    private int userId;
    private String username;
    private String identificationid;
    private int paymentstatus;
    private int examtime;
    private int examroomid;
    private String examposition;
    private String tel;
    private String examid;


    public int getRegid() {
        return regid;
    }

    public void setRegid(int regid) {
        this.regid = regid;
    }

    public int getExamtime() {
        return examtime;
    }

    public void setExamtime(int examtime) {
        this.examtime = examtime;
    }
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public int getExamroomid() {
        return examroomid;
    }

    public void setExamroomid(int examroomid) {
        this.examroomid = examroomid;
    }

    public String getExamposition() {
        return examposition;
    }

    public void setExamposition(String examposition) {
        this.examposition = examposition;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getPaymentstatus() {
        return paymentstatus;
    }

    public void setPaymentstatus(int paymentstatus) {
        this.paymentstatus = paymentstatus;
    }

    public String getExamid() {
        return examid;
    }

    public void setExamid(String examid) {
        this.examid = examid;
    }

    @Override
    public String toString() {
        return "Registration{" +
                "regid=" + regid +
                ", userId=" + userId +
                ", username='" + username + '\'' +
                ", identificationid='" + identificationid + '\'' +
                ", paymentstatus=" + paymentstatus +
                ", examtime=" + examtime +
                ", examroomid=" + examroomid +
                ", examposition='" + examposition + '\'' +
                ", tel='" + tel + '\'' +
                ", examid='" + examid + '\'' +
                '}';
    }
}
