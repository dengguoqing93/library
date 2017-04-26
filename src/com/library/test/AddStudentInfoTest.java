package com.library.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.library.action.StudentInfoAction;
import com.library.dao.dgq.StudentInfoMapper;
import com.library.pojo.dgq.Student;

public class AddStudentInfoTest {

	private static ApplicationContext ac;
	private static StudentInfoMapper studentInfoMapper;
	private static StudentInfoAction studentInfoAction;
	@BeforeClass
    public static void setUpBeforeClass() throws Exception {
       ac = new ClassPathXmlApplicationContext("applicationContext.xml");
       studentInfoMapper = ac.getBean(StudentInfoMapper.class);
       studentInfoAction = ac.getBean(StudentInfoAction.class);
       
    }
	@Test
	public void testStudentInfoMapper() {
		Student student = new Student();
		student.setStudentno(new Long(1201020106));
		student.setStudentsex((short) 0);
		student.setClasses((long)01);
		student.setDepartmentname("工学院");
		student.setGrade((short)12);
		student.setProfessionname("投资经济管理");
		student.setPwd("020106");
		student.setStudentname("李浩");
		student.setStudentphone(new Long("15537773236"));
		/*StudentInfo studentInfo = studentInfoMapper.selectByPrimaryKey((long)1201020105);
		System.out.println(studentInfo.getStudentname());*/
		int insertStudentInfo = studentInfoMapper.insertStudentInfo(student);
		System.out.println(insertStudentInfo);
	}

	@Test
	public void testStudentinfoAction() {
		Student student = new Student();
		student.setStudentno(new Long(1201020107));
		student.setStudentsex((short) 1);
		student.setClasses((long)01);
		student.setDepartmentname("工学院");
		student.setGrade((short)12);
		student.setProfessionname("投资经济管理");
		student.setPwd("020107");
		student.setStudentname("何洁");
		student.setStudentphone(new Long("15537773236"));
		/*int addStudent = studentInfoAction.addStudent(student);
		System.out.println(addStudent);*/
	}
	/*
	 * 
	 */
	@Test
	public void selectByStudentnotest() {
		Student student = studentInfoMapper.selectByStudentno(new Long(1201020107));
		System.out.println(student);
	}
	
}
