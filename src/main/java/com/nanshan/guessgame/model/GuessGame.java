package com.nanshan.guessgame.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class GuessGame {

    @Id
    private int magicNumber;

    private int remain;

    public GuessGame(int remain, int magicNumber) {
        setRemain(remain);
        setMagicNumber(magicNumber);
    }

    public int getRemain() {
        return remain;
    }
    public void setRemain(int remain) {
        this.remain = remain;
    }

    public int getMagicNumber() {
        return magicNumber;
    }
    public void setMagicNumber(int magicNumber) {
        this.magicNumber = magicNumber;
    }

    public boolean guess(int number) {
        return number == magicNumber;
    }
}
