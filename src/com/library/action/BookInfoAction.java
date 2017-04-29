package com.library.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.library.pojo.dgq.BookInfo;
import com.library.service.IBookInfoService;

@Controller
@RequestMapping(value="bookInfo",method=RequestMethod.POST,produces="text/html;charset=utf-8")
public class BookInfoAction {

	@Autowired
	private IBookInfoService bookInfoService;
	
	@RequestMapping(value="queryBookinfo")
	@ResponseBody
	public String queryBookinfo(String bookno){
		BookInfo bookInfo = bookInfoService.selectBookInfoByBookno(bookno);
		return JSON.toJSONString(bookInfo);
	}
}
