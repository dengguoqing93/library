package com.library.dao.dgq;

import com.library.pojo.dgq.StudentInfo;

public interface StudentInfoMapper {
    int deleteByPrimaryKey(Long studentno);

    int insert(StudentInfo record);

    int insertSelective(StudentInfo record);

    StudentInfo selectByPrimaryKey(Long studentno);

    int updateByPrimaryKeySelective(StudentInfo record);

    int updateByPrimaryKey(StudentInfo record);
}