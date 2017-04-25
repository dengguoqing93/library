package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.DepartmentInfo;

@Repository
public interface DepartmentInfoMapper {
	DepartmentInfo selectByDepartmentNo(short departmentno);
}