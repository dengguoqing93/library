package com.library.test;

import org.junit.Test;

import com.library.dao.dgq.BorrowingInfoMapper;

public class TestBookInfoMapper {
	
	private static BorrowingInfoMapper mapper;
	
	static{
		mapper = UtilConfig.ac.getBean(BorrowingInfoMapper.class);
	}
	
	@Test
	public void testInsertBorrowinginfo() {
		 long bookid = 2;
		 long studentno = 1201020105;
		 int insertBorrowinginfo = mapper.insertBorrowinginfo(bookid, studentno);
		 System.out.println(insertBorrowinginfo);
	}

}
