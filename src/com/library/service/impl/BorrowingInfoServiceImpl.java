package com.library.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dao.dgq.BookInfoMapper;
import com.library.dao.dgq.BorrowingInfoMapper;
import com.library.dao.dgq.StudentInfoMapper;
import com.library.pojo.dgq.BookInfo;
import com.library.pojo.dgq.StudentInfo;
import com.library.service.IBorrowingInfoService;
@Service
public class BorrowingInfoServiceImpl implements IBorrowingInfoService {
	
	@Autowired
	private BorrowingInfoMapper borrowingInfoMapper;
	
	@Autowired
	private BookInfoMapper bookInfoMapper;
	
	@Autowired
	private StudentInfoMapper studentInfoMapper;
	
	
	@Override
	public void loanBook(StudentInfo studentInfo, BookInfo bookInfo) {
		borrowingInfoMapper.insertBorrowinginfo(bookInfo.getBookid(), studentInfo.getStudentno());
		bookInfoMapper.updateBookBorrowingStatus(bookInfo);
		studentInfoMapper.updateStudentBorringInfo(studentInfo);
	}

}
