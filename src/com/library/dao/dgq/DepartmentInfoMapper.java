package com.library.dao.dgq;

import com.library.pojo.dgq.DepartmentInfo;

public interface DepartmentInfoMapper {
    int deleteByPrimaryKey(Long departmentid);

    int insert(DepartmentInfo record);

    int insertSelective(DepartmentInfo record);

    DepartmentInfo selectByPrimaryKey(Long departmentid);

    int updateByPrimaryKeySelective(DepartmentInfo record);

    int updateByPrimaryKey(DepartmentInfo record);
}