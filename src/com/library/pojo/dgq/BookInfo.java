package com.library.pojo.dgq;

import java.math.BigDecimal;

public class BookInfo {
    private Long bookid;

    private String bookno;

    private String bookname;

    private String author;

    private Long bookcategoryid;

    private Long publishcompanyid;

    private Short publicationyear;

    private Short borrowingstatus;

    private String comm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    private BigDecimal price;

    public Long getBookid() {
        return bookid;
    }

    public void setBookid(Long bookid) {
        this.bookid = bookid;
    }

    public String getBookno() {
        return bookno;
    }

    public void setBookno(String bookno) {
        this.bookno = bookno == null ? null : bookno.trim();
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Long getBookcategoryid() {
        return bookcategoryid;
    }

    public void setBookcategoryid(Long bookcategoryid) {
        this.bookcategoryid = bookcategoryid;
    }

    public Long getPublishcompanyid() {
        return publishcompanyid;
    }

    public void setPublishcompanyid(Long publishcompanyid) {
        this.publishcompanyid = publishcompanyid;
    }

    public Short getPublicationyear() {
        return publicationyear;
    }

    public void setPublicationyear(Short publicationyear) {
        this.publicationyear = publicationyear;
    }

    public Short getBorrowingstatus() {
        return borrowingstatus;
    }

    public void setBorrowingstatus(Short borrowingstatus) {
        this.borrowingstatus = borrowingstatus;
    }

    public String getComm() {
        return comm;
    }

    public void setComm(String comm) {
        this.comm = comm == null ? null : comm.trim();
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

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}