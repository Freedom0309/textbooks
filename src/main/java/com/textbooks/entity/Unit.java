package com.textbooks.entity;

import java.io.Serializable;
import java.util.Date;

public class Unit implements Serializable {
    private String id;

    private String parentid;

    private String path;

    private String name;

    private String aliasname;

    private String unitcode;

    private String note;

    private String address;

    private String telephone;

    private String email;

    private String website;

    private Integer location;

    private Byte haschildren;

    private Byte delflag;

    private String sysopby;

    private Date syscreatetime;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getParentid() {
        return parentid;
    }

    public void setParentid(String parentid) {
        this.parentid = parentid == null ? null : parentid.trim();
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAliasname() {
        return aliasname;
    }

    public void setAliasname(String aliasname) {
        this.aliasname = aliasname == null ? null : aliasname.trim();
    }

    public String getUnitcode() {
        return unitcode;
    }

    public void setUnitcode(String unitcode) {
        this.unitcode = unitcode == null ? null : unitcode.trim();
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note == null ? null : note.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website == null ? null : website.trim();
    }

    public Integer getLocation() {
        return location;
    }

    public void setLocation(Integer location) {
        this.location = location;
    }

    public Byte getHaschildren() {
        return haschildren;
    }

    public void setHaschildren(Byte haschildren) {
        this.haschildren = haschildren;
    }

    public Byte getDelflag() {
        return delflag;
    }

    public void setDelflag(Byte delflag) {
        this.delflag = delflag;
    }

    public String getSysopby() {
        return sysopby;
    }

    public void setSysopby(String sysopby) {
        this.sysopby = sysopby == null ? null : sysopby.trim();
    }

    public Date getSyscreatetime() {
        return syscreatetime;
    }

    public void setSyscreatetime(Date syscreatetime) {
        this.syscreatetime = syscreatetime;
    }
}