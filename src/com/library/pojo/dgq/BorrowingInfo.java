package com.library.pojo.dgq;

import java.util.Date;

public class BorrowingInfo {
    private Long borrowingid;

    private Long bookid;

    private Long studentno;

    private Date borroweddate;

    private Date shouldreturndate;

    private Date actualreturndate;

    private Short overdue;

    private String comm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getBorrowingid() {
        return borrowingid;
    }

    public void setBorrowingid(Long borrowingid) {
        this.borrowingid = borrowingid;
    }

    public Long getBookid() {
        return bookid;
    }

    public void setBookid(Long bookid) {
        this.bookid = bookid;
    }

    public Long getStudentno() {
        return studentno;
    }

    public void setStudentno(Long studentno) {
        this.studentno = studentno;
    }

    public Date getBorroweddate() {
        return borroweddate;
    }

    public void setBorroweddate(Date borroweddate) {
        this.borroweddate = borroweddate;
    }

    public Date getShouldreturndate() {
        return shouldreturndate;
    }

    public void setShouldreturndate(Date shouldreturndate) {
        this.shouldreturndate = shouldreturndate;
    }

    public Date getActualreturndate() {
        return actualreturndate;
    }

    public void setActualreturndate(Date actualreturndate) {
        this.actualreturndate = actualreturndate;
    }

    public Short getOverdue() {
        return overdue;
    }

    public void setOverdue(Short overdue) {
        this.overdue = overdue;
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
}