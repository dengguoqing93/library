package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.Student;
import com.library.pojo.dgq.StudentInfo;

@Repository
public interface StudentInfoMapper {
   int insertStudentInfo(Student student);
   StudentInfo selectByPrimaryKey(long studentno);
}