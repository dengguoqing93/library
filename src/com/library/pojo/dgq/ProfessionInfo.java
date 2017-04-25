package com.library.pojo.dgq;

public class ProfessionInfo {
    private Long professionid;

    private Long professionno;

    private String professionname;

    private DepartmentInfo department;

    private String professioncomm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    public Long getProfessionid() {
        return professionid;
    }

    public void setProfessionid(Long professionid) {
        this.professionid = professionid;
    }

    public Long getProfessionno() {
        return professionno;
    }

    public void setProfessionno(Long professionno) {
        this.professionno = professionno;
    }

    public String getProfessionname() {
        return professionname;
    }

    public void setProfessionname(String professionname) {
        this.professionname = professionname == null ? null : professionname.trim();
    }
    
    
    
    public DepartmentInfo getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentInfo department) {
		this.department = department;
	}

	public String getProfessioncomm() {
        return professioncomm;
    }

    public void setProfessioncomm(String professioncomm) {
        this.professioncomm = professioncomm == null ? null : professioncomm.trim();
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
		return "ProfessionInfo [professionid=" + professionid + ", professionno=" + professionno + ", professionname="
				+ professionname + ", department=" + department + ", professioncomm=" + professioncomm + ", def01="
				+ def01 + ", def02=" + def02 + ", def03=" + def03 + ", def04=" + def04 + ", def05=" + def05 + "]";
	}
    
}