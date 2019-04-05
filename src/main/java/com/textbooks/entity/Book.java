package com.textbooks.entity;

import java.io.Serializable;

public class Book implements Serializable {
    private String id;

    private String name;

    private String ghs;

    private String price;

    private String discount;

    private String num;

    private String status;

    private String exd1;

    private String exd2;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getGhs() {
        return ghs;
    }

    public void setGhs(String ghs) {
        this.ghs = ghs == null ? null : ghs.trim();
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount == null ? null : discount.trim();
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getExd1() {
        return exd1;
    }

    public void setExd1(String exd1) {
        this.exd1 = exd1 == null ? null : exd1.trim();
    }

    public String getExd2() {
        return exd2;
    }

    public void setExd2(String exd2) {
        this.exd2 = exd2 == null ? null : exd2.trim();
    }
}