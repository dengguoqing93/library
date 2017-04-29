package com.library.dao.dgq;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.Borrowing;
import com.library.pojo.dgq.Student;
import com.library.pojo.dgq.StudentInfo;

@Repository
public interface StudentInfoMapper {
	/*
	 * 通过前端传递的学生对象插入学生信息
	 */
   int insertStudentInfo(Student student);
   /*
    * 通过学生编号查询数据库中的学生对象
    */
   StudentInfo selectByPrimaryKey(long studentno);
   /*
    * 通过学生编号查询自己构建的学生对象
    */
   Student selectByStudentno(long studentno);
   /*
    * 通过学生编号查询借阅信息
    */
   List<Borrowing> selectBorrowingByStudentno(long studentno);
   /*
    * 更新学生的借阅信息
    */
   int updateStudentBorringInfo(StudentInfo studentInfo);
}