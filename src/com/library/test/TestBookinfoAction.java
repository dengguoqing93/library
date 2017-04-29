package com.library.test;

import org.junit.Test;

import com.library.action.BookInfoAction;

public class TestBookinfoAction {
	
	private static BookInfoAction action = UtilConfig.ac.getBean(BookInfoAction.class);
	
	
	@Test
	public void test() {
		String queryBookinfo = action.queryBookinfo("lszv03");
		System.out.println(queryBookinfo);
	}

}
