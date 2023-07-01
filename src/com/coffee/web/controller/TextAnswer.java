package com.coffee.web.controller;

public class TextAnswer {
    private String startAnswerNum;
    private String content;
    private int userId;
    private int paperId;
    private double score;
    private boolean marked;


    public TextAnswer(int startAnswerNum, int userId, int paperId, double score, String content, boolean marked) {
        if(startAnswerNum==56)
            this.startAnswerNum = "翻译";
        else if (startAnswerNum==57)
            this.startAnswerNum = "作文";
        this.userId = userId;
        this.paperId = paperId;
        this.content = content;
        this.score = score;
        this.marked = marked;
    }

    // Getter and setter methods
    public String getStartAnswerNum() {
        return startAnswerNum;
    }

    public void setStartAnswerNum(String startAnswerNum) {
        this.startAnswerNum = startAnswerNum;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPaperId() {
        return paperId;
    }

    public void setPaperId(int paperId) {
        this.paperId = paperId;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }
}
