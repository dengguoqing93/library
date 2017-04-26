package com.library.test;

import org.junit.BeforeClass;
import org.junit.Test;

import com.library.action.StudentInfoAction;
import com.library.pojo.dgq.Student;

public class TestStudentAction {
	private static StudentInfoAction sif;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		  sif = UtilConfig.ac.getBean(StudentInfoAction.class);
	}

	@Test
	public void test() {
		Student student = new Student();
		student.setStudentno(new Long("1201020105"));
		String selectStudent = sif.selectStudent("1201020105");
		System.out.println(selectStudent);
	}
	
	@Test
	public void testSelectBorrowingByStudentno() {
		String selectBorrowingByStudentno = sif.selectBorrowingByStudentno("1201020107");
		System.out.println(selectBorrowingByStudentno);
	}
}
