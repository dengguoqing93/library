package com.library.pojo.dgq;

public class BookPublishCompanyInfo {
    private Long publishcompanyid;

    private String publishcompanyabbr;

    private String publishcompanyname;

    private String publishcompanycomm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getPublishcompanyid() {
        return publishcompanyid;
    }

    public void setPublishcompanyid(Long publishcompanyid) {
        this.publishcompanyid = publishcompanyid;
    }

    public String getPublishcompanyabbr() {
        return publishcompanyabbr;
    }

    public void setPublishcompanyabbr(String publishcompanyabbr) {
        this.publishcompanyabbr = publishcompanyabbr == null ? null : publishcompanyabbr.trim();
    }

    public String getPublishcompanyname() {
        return publishcompanyname;
    }

    public void setPublishcompanyname(String publishcompanyname) {
        this.publishcompanyname = publishcompanyname == null ? null : publishcompanyname.trim();
    }

    public String getPublishcompanycomm() {
        return publishcompanycomm;
    }

    public void setPublishcompanycomm(String publishcompanycomm) {
        this.publishcompanycomm = publishcompanycomm == null ? null : publishcompanycomm.trim();
    }

    public String getDef01() {
        return def01;
    }

    public void setDef01(String def01) {
        this.def01 = def01 == null ? null : def01.trim();
    }

    public String getDef02() {
        return def02;
    }

    public void setDef02(String def02) {
        this.def02 = def02 == null ? null : def02.trim();
    }

    public String getDef03() {
        return def03;
    }

    public void setDef03(String def03) {
        this.def03 = def03 == null ? null : def03.trim();
    }

    public String getDef04() {
        return def04;
    }

    public void setDef04(String def04) {
        this.def04 = def04 == null ? null : def04.trim();
    }

    public String getDef05() {
        return def05;
    }

    public void setDef05(String def05) {
        this.def05 = def05 == null ? null : def05.trim();
    }
}