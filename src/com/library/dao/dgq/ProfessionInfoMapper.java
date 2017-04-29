package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.ProfessionInfo;

@Repository
public interface ProfessionInfoMapper {
	/*
	 * 通过专业编号和院系id查询专业编号
	 */
    ProfessionInfo selectByProfessionno(long professionno,short departmentid);
}