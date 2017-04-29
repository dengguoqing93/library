package com.library.dao.dgq;

import org.springframework.stereotype.Repository;

import com.library.pojo.dgq.BookInfo;

@Repository
public interface BookInfoMapper {
	/*
	 * 更新图书的借阅状状态
	 */
    int updateBookBorrowingStatus(BookInfo bookInfo);
    /*
     * 通过图书编号查询图书信息
     */
    BookInfo selectBookInfoByBookno(String bookno);
}