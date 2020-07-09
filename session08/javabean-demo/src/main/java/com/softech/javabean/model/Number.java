/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softech.javabean.model;

import java.io.Serializable;

/**
 *
 * @author TAI
 */
public class Number implements Serializable {

    String num1, num2;

    public Number() {
    }

    public Number(String num1, String num2) {
        this.num1 = num1;
        this.num2 = num2;
    }

    public int add() {
        try {
            int a = Integer.parseInt(num1);
            int b = Integer.parseInt(num2);
            return a + b;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
        
        
    }

    public String getNum1() {
        return num1;
    }

    public void setNum1(String num1) {
        this.num1 = num1;
    }

    public String getNum2() {
        return num2;
    }

    public void setNum2(String num2) {
        this.num2 = num2;
    }

}
