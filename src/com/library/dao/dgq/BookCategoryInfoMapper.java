package com.library.dao.dgq;

import com.library.pojo.dgq.BookCategoryInfo;

public interface BookCategoryInfoMapper {
    int deleteByPrimaryKey(Long bookcategoryid);

    int insert(BookCategoryInfo record);

    int insertSelective(BookCategoryInfo record);

    BookCategoryInfo selectByPrimaryKey(Long bookcategoryid);

    int updateByPrimaryKeySelective(BookCategoryInfo record);

    int updateByPrimaryKey(BookCategoryInfo record);
}