package com.library.pojo.dgq;

public class DepartmentInfo {
    private Long departmentid;

    private Short departmentno;

    private String departmentname;

    private String departmentcomm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Long departmentid) {
        this.departmentid = departmentid;
    }

    public Short getDepartmentno() {
        return departmentno;
    }

    public void setDepartmentno(Short departmentno) {
        this.departmentno = departmentno;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname == null ? null : departmentname.trim();
    }

    public String getDepartmentcomm() {
        return departmentcomm;
    }

    public void setDepartmentcomm(String departmentcomm) {
        this.departmentcomm = departmentcomm == null ? null : departmentcomm.trim();
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