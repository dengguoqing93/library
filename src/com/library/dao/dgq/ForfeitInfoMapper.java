package com.library.dao.dgq;

import com.library.pojo.dgq.ForfeitInfo;

public interface ForfeitInfoMapper {
    int deleteByPrimaryKey(Long forfeitid);

    int insert(ForfeitInfo record);

    int insertSelective(ForfeitInfo record);

    ForfeitInfo selectByPrimaryKey(Long forfeitid);

    int updateByPrimaryKeySelective(ForfeitInfo record);

    int updateByPrimaryKey(ForfeitInfo record);
}