package com.library.service;

import com.library.pojo.dgq.BookInfo;

public interface IBookInfoService {
	/*
	 * 通过图书编号查询图书信息
	 */
	BookInfo selectBookInfoByBookno(String bookno);
}
