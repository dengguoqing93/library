package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.DepartmentInfo;

@Repository
public interface DepartmentInfoMapper {
	/*
	 * 通过院系编号，查询相应的院系
	 */
	DepartmentInfo selectByDepartmentNo(short departmentno);
}