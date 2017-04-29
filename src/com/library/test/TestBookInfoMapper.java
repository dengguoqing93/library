package com.library.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.library.dao.dgq.BookInfoMapper;
import com.library.pojo.dgq.BookInfo;

public class TestBookInfoMapper {
	private static BookInfoMapper mapper;
	
	static{
		mapper = UtilConfig.ac.getBean(BookInfoMapper.class);
	}
	
	@Test
	public void testSelectBookInfoByBookno() {
		BookInfo bookInfo = mapper.selectBookInfoByBookno("lszv04");
		//System.out.println(bookInfo.getBookname());
		assertEquals("天龙八部", bookInfo.getBookname());
	}
	@Test
	public void testUpdateBookBorrowingStatus() {
		BookInfo bookInfo = mapper.selectBookInfoByBookno("lszv04");
		int i = mapper.updateBookBorrowingStatus(bookInfo);
		System.out.println(i);
	}

}
