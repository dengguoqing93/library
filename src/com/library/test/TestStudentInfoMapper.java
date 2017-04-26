package com.library.test;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.library.dao.dgq.StudentInfoMapper;
import com.library.pojo.dgq.Borrowing;
import com.library.pojo.dgq.Student;

public class TestStudentInfoMapper {
	private static ApplicationContext ac;
	private static StudentInfoMapper studentInfoMapper;
	@BeforeClass
    public static void setUpBeforeClass() throws Exception {
       ac = new ClassPathXmlApplicationContext("applicationContext.xml");
       studentInfoMapper = ac.getBean(StudentInfoMapper.class);
    }
	/*
	 * 测试查询学生信息
	 */
	@Test
	public void selectByStudentnotest() {
		Student student = studentInfoMapper.selectByStudentno(new Long(1201020107));
		System.out.println(student);
		
	}
	/*
	 * 测试查询学生的借阅细信息
	 */
	@Test
	public void selectBorrowingByStudentnotest() {
		List<Borrowing> list = studentInfoMapper.selectBorrowingByStudentno(new Long(1201020105));
		for (Borrowing borrowing : list) {
			System.out.println(borrowing);
		}
		
		
	}
	
}
