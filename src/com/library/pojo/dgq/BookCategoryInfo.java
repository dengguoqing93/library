package com.library.pojo.dgq;

public class BookCategoryInfo {
    private Long bookcategoryid;

    private String bookcategoryabbr;

    private String bookcategoryname;

    private String bookcategorycomm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getBookcategoryid() {
        return bookcategoryid;
    }

    public void setBookcategoryid(Long bookcategoryid) {
        this.bookcategoryid = bookcategoryid;
    }

    public String getBookcategoryabbr() {
        return bookcategoryabbr;
    }

    public void setBookcategoryabbr(String bookcategoryabbr) {
        this.bookcategoryabbr = bookcategoryabbr == null ? null : bookcategoryabbr.trim();
    }

    public String getBookcategoryname() {
        return bookcategoryname;
    }

    public void setBookcategoryname(String bookcategoryname) {
        this.bookcategoryname = bookcategoryname == null ? null : bookcategoryname.trim();
    }

    public String getBookcategorycomm() {
        return bookcategorycomm;
    }

    public void setBookcategorycomm(String bookcategorycomm) {
        this.bookcategorycomm = bookcategorycomm == null ? null : bookcategorycomm.trim();
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