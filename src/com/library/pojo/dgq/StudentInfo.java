package com.library.pojo.dgq;

public class StudentInfo {
    private Long studentno;

    private String pwd;

    private Short studentsex;

    private Short grade;

    private DepartmentInfo department;

    private Long classes;

    private Long studentphone;

    private Short borrowquantities;

    private Short borrowedquantities;

    private Short borrowprivilege;

    private String comm;

    private String def01;

    private String def02;

    private String def03;

    private String def04;

    private String def05;

    private ProfessionInfo profession;

    private String studentname;

    public Long getStudentno() {
        return studentno;
    }

    public void setStudentno(Long studentno) {
        this.studentno = studentno;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Short getStudentsex() {
        return studentsex;
    }

    public void setStudentsex(Short studentsex) {
        this.studentsex = studentsex;
    }

    public Short getGrade() {
        return grade;
    }

    public void setGrade(Short grade) {
        this.grade = grade;
    }


    public Long getClasses() {
        return classes;
    }

    public void setClasses(Long classes) {
        this.classes = classes;
    }

    public Long getStudentphone() {
        return studentphone;
    }

    public void setStudentphone(Long studentphone) {
        this.studentphone = studentphone;
    }

    public Short getBorrowquantities() {
        return borrowquantities;
    }

    public void setBorrowquantities(Short borrowquantities) {
        this.borrowquantities = borrowquantities;
    }

    public Short getBorrowedquantities() {
        return borrowedquantities;
    }

    public void setBorrowedquantities(Short borrowedquantities) {
        this.borrowedquantities = borrowedquantities;
    }

    public Short getBorrowprivilege() {
        return borrowprivilege;
    }

    public void setBorrowprivilege(Short borrowprivilege) {
        this.borrowprivilege = borrowprivilege;
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
    
    

    public DepartmentInfo getDepartment() {
		return department;
	}

	public void setDepartment(DepartmentInfo department) {
		this.department = department;
	}

	public ProfessionInfo getProfession() {
		return profession;
	}

	public void setProfession(ProfessionInfo profession) {
		this.profession = profession;
	}

	public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname == null ? null : studentname.trim();
    }
}