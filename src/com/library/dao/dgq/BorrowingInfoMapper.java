package com.library.dao.dgq;

import com.library.pojo.dgq.BorrowingInfo;

public interface BorrowingInfoMapper {
    int deleteByPrimaryKey(Long borrowingid);

    int insert(BorrowingInfo record);

    int insertSelective(BorrowingInfo record);

    BorrowingInfo selectByPrimaryKey(Long borrowingid);

    int updateByPrimaryKeySelective(BorrowingInfo record);

    int updateByPrimaryKey(BorrowingInfo record);
}