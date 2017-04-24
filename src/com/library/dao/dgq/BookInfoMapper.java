package com.library.dao.dgq;

import com.library.pojo.dgq.BookInfo;

public interface BookInfoMapper {
    int deleteByPrimaryKey(Long bookid);

    int insert(BookInfo record);

    int insertSelective(BookInfo record);

    BookInfo selectByPrimaryKey(Long bookid);

    int updateByPrimaryKeySelective(BookInfo record);

    int updateByPrimaryKey(BookInfo record);
}