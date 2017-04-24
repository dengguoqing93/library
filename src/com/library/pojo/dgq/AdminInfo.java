package com.library.pojo.dgq;

public class AdminInfo {
    private Long adminid;

    private String username;

    private String pwd;

    private String adminname;

    private Short adminsex;

    private Long adminphone;

    private String comm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getAdminid() {
        return adminid;
    }

    public void setAdminid(Long adminid) {
        this.adminid = adminid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }

    public Short getAdminsex() {
        return adminsex;
    }

    public void setAdminsex(Short adminsex) {
        this.adminsex = adminsex;
    }

    public Long getAdminphone() {
        return adminphone;
    }

    public void setAdminphone(Long adminphone) {
        this.adminphone = adminphone;
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

	@Override
	public String toString() {
		return "AdminInfo [adminid=" + adminid + ", username=" + username + ", pwd=" + pwd + ", adminname=" + adminname
				+ ", adminsex=" + adminsex + ", adminphone=" + adminphone + ", comm=" + comm + ", def01=" + def01
				+ ", def02=" + def02 + ", def03=" + def03 + ", def04=" + def04 + ", def05=" + def05 + "]";
	}
    
}