/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.softech.model;

import java.io.Serializable;

/**
 *
 * @author TAI
 */
public class Books implements Serializable {

    private int bookID;
    private String title;
    private double price;
    private int quantity;

    public Books() {
    }

    public Books(int bookID, String title, double price, int quantity) {
        this.bookID = bookID;
        this.title = title;
        this.price = price;
        this.quantity = quantity;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


}
