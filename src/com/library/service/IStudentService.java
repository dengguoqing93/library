package com.library.service;

import java.util.List;

import com.library.pojo.dgq.Borrowing;
import com.library.pojo.dgq.DepartmentInfo;
import com.library.pojo.dgq.ProfessionInfo;
import com.library.pojo.dgq.Student;
import com.library.pojo.dgq.StudentInfo;

public interface IStudentService {
	/**
	 * 查询学生信息通过学生编号
	 * 
	 * @param studentno
	 * @return
	 */
	StudentInfo selectByPrimaryKey(long studentno);

	/*
	 * 查询院系信息通过院系编号
	 */
	DepartmentInfo selectByDepartmentNo(short departmentno);

	/*
	 * 通过专业编号和院系编号
	 */
	ProfessionInfo selectByProfessionno(long professionno, short departmentid);

	/*
	 * 添加一个学生的信息
	 */
	int insertStudentInfo(Student student);

	/*
	 * 通过学生编号查询自己构建的学生对象
	 */
	Student selectByStudentno(long studentno);

	/*
	 * 通过学生编号查询借阅信息
	 */
	List<Borrowing> selectBorrowingByStudentno(long studentno);
}
