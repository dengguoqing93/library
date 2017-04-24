package com.library.dao.dgq;

import com.library.pojo.dgq.ProfessionInfo;

public interface ProfessionInfoMapper {
    int deleteByPrimaryKey(Long professionid);

    int insert(ProfessionInfo record);

    int insertSelective(ProfessionInfo record);

    ProfessionInfo selectByPrimaryKey(Long professionid);

    int updateByPrimaryKeySelective(ProfessionInfo record);

    int updateByPrimaryKey(ProfessionInfo record);
}