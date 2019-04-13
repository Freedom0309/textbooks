package com.textbooks.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class MajorBook implements Serializable {
    private String id;

    private String bookid;

    private String majorid;

    private String classid;

    private String cclassnum;

    private String collegeid;

    private String place;

    private String reviewbook;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid == null ? null : bookid.trim();
    }

    public String getMajorid() {
        return majorid;
    }

    public void setMajorid(String majorid) {
        this.majorid = majorid == null ? null : majorid.trim();
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid == null ? null : classid.trim();
    }

    public String getCclassnum() {
        return cclassnum;
    }

    public void setCclassnum(String cclassnum) {
        this.cclassnum = cclassnum == null ? null : cclassnum.trim();
    }

    public String getCollegeid() {
        return collegeid;
    }

    public void setCollegeid(String collegeid) {
        this.collegeid = collegeid == null ? null : collegeid.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public String getReviewbook() {
        return reviewbook;
    }

    public void setReviewbook(String reviewbook) {
        this.reviewbook = reviewbook == null ? null : reviewbook.trim();
    }
}