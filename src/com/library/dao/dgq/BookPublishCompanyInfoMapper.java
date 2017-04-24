package com.library.dao.dgq;

import com.library.pojo.dgq.BookPublishCompanyInfo;

public interface BookPublishCompanyInfoMapper {
    int deleteByPrimaryKey(Long publishcompanyid);

    int insert(BookPublishCompanyInfo record);

    int insertSelective(BookPublishCompanyInfo record);

    BookPublishCompanyInfo selectByPrimaryKey(Long publishcompanyid);

    int updateByPrimaryKeySelective(BookPublishCompanyInfo record);

    int updateByPrimaryKey(BookPublishCompanyInfo record);
}