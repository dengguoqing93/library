package com.library.pojo.dgq;

public class Student {
	private long studentno;
	private String studentname;
	private Long studentphone;
	private short studentsex;
	private short grade;
	private String pwd;
	private Long classes;
	private String departmentname;
	private String professionname;
	
	public short getStudentsex() {
		return studentsex;
	}
	public void setStudentsex(short studentsex) {
		this.studentsex = studentsex;
	}
	public short getGrade() {
		return grade;
	}
	public void setGrade(short grade) {
		this.grade = grade;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public long getStudentno() {
		return studentno;
	}
	public void setStudentno(long studentno) {
		this.studentno = studentno;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public Long getStudentphone() {
		return studentphone;
	}
	public void setStudentphone(Long studentphone) {
		this.studentphone = studentphone;
	}
	
	public Long getClasses() {
		return classes;
	}
	public void setClasses(Long classes) {
		this.classes = classes;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public String getProfessionname() {
		return professionname;
	}
	public void setProfessionname(String professionname) {
		this.professionname = professionname;
	}
	@Override
	public String toString() {
		return "Student [studentno=" + studentno + ", studentname=" + studentname + ", studentphone=" + studentphone
				+ ", studentsex=" + studentsex + ", grade=" + grade + ", pwd=" + pwd + ", classes=" + classes
				+ ", departmentname=" + departmentname + ", professionname=" + professionname + "]";
	}
	
	
}
