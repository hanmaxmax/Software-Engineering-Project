package com.coffee.web.formbean;

import java.util.HashMap;
import java.util.Map;


public class WritingAnswerBean {
    private String question;
    private int submittime;


    public void setQuestion(String a) {
        this.question = a;
    }

    public String getQuestion() {
        return this.question;
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
        return "Q = " + this.question ;
    }

//    public int getStartAnswerNum() {
//        return this.startAnswerNum;
//    }
}