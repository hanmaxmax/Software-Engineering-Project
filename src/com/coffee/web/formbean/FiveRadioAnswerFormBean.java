package com.coffee.web.formbean;

import java.util.HashMap;
import java.util.Map;

/**
 * 封装用户登录表单bean
 *
 * @author K
 *
 */
public class FiveRadioAnswerFormBean {
    private int question1;
    private int question2;
    private int question3;
    private int question4;
    private int question5;
    private int submittime;

    public void setQuestion1(int a1) {
        this.question1 = a1;
    }

    public int getQuestion1() {
        return this.question1;
    }

    public void setQuestion2(int a1) {
        this.question2 = a1;
    }

    public int getQuestion2() {
        return this.question2;
    }

    public void setQuestion3(int a1) {
        this.question3 = a1;
    }

    public int getQuestion3() {
        return this.question3;
    }

    public void setQuestion4(int a1) {
        this.question4 = a1;
    }

    public int getQuestion4() {
        return this.question4;
    }

    public void setQuestion5(int a1) {
        this.question5 = a1;
    }

    public int getQuestion5() {
        return this.question5;
    }

    public void setsubmittime(int submittime) {
        this.submittime = submittime;
    }

    public int getsubmittime() {
        return submittime;
    }

    /**
     * 存储校验不通过时给用户的错误提示信息
     */
    private Map<String, String> errors = new HashMap<String, String>();

    public Map<String, String> getErrors() {
        return errors;
    }

    public void setErrors(Map<String, String> errors) {
        this.errors = errors;
    }

    @Override
    public String toString() {
//        return "LoginFormBean [account=" + account + ",password=" + password + ",status=" + status + ",logintime="
//                + logintime + "]";
        return "Q1 = " + this.question1 + "; Q2 = " + this.question2
                + "; Q3 = " + this.question3 + "; Q4=  " + this.question4 + "; Q5 = " + this.question5;
    }

//    public int getStartAnswerNum() {
//        return this.startAnswerNum;
//    }
}

