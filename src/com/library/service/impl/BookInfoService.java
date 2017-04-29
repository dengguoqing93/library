package com.library.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dao.dgq.BookInfoMapper;
import com.library.pojo.dgq.BookInfo;
import com.library.service.IBookInfoService;

@Service
public class BookInfoService implements IBookInfoService {

	@Autowired
	private BookInfoMapper bookInfoMapper;
	
	@Override
	public BookInfo selectBookInfoByBookno(String bookno) {
		
		return bookInfoMapper.selectBookInfoByBookno(bookno); 
	}

}
