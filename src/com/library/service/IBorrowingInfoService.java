package com.library.service;

import com.library.pojo.dgq.BookInfo;
import com.library.pojo.dgq.StudentInfo;

public interface IBorrowingInfoService {
	/*
	 * 图书借阅
	 */
	void loanBook(StudentInfo studentInfo,BookInfo bookInfo);
}
