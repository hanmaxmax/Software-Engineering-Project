package com.coffee.domain;

/**
 * JavaBean:PO，字段对应score
 *
 * @author K
 */
public class Score {
    String listening;
    String reading;
    String transition;
    String composition;
    String total;

    public String getListening() {
        return listening;
    }

    public void setListening(String listening) {
        this.listening = listening;
    }

    public String getReading() {
        return reading;
    }

    public void setReading(String reading) {
        this.reading = reading;
    }

    public String getTransition() {
        return transition;
    }

    public void setTransition(String transition) {
        this.transition = transition;
    }

    public String getComposition() {
        return composition;
    }

    public void setComposition(String composition) {
        this.composition = composition;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Score{" +
                "listening='" + listening + '\'' +
                ", reading='" + reading + '\'' +
                ", transition='" + transition + '\'' +
                ", composition='" + composition + '\'' +
                ", total='" + total + '\'' +
                '}';
    }
}
