package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.ProfessionInfo;

@Repository
public interface ProfessionInfoMapper {
    ProfessionInfo selectByProfessionno(long professionno,short departmentid);
}