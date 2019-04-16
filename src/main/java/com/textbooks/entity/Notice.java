package com.textbooks.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data
public class Notice implements Serializable {
    private String id;

    private String theme;

    private String majorbookid;

    private String content;

    private Date syscreatime;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme == null ? null : theme.trim();
    }

    public String getMajorbookid() {
        return majorbookid;
    }

    public void setMajorbookid(String majorbookid) {
        this.majorbookid = majorbookid == null ? null : majorbookid.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getSyscreatime() {
        return syscreatime;
    }

    public void setSyscreatime(Date syscreatime) {
        this.syscreatime = syscreatime;
    }
}