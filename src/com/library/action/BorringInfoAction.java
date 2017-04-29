package com.library.action;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.pojo.dgq.BookInfo;
import com.library.pojo.dgq.StudentInfo;
import com.library.service.IBorrowingInfoService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "borrowing", method = RequestMethod.POST, produces = "text/html;charset=utf-8")
public class BorringInfoAction {

	@Autowired
	private IBorrowingInfoService borrowingInfoService;

	@RequestMapping(value = "loanBook")
	@ResponseBody
	public String loanBook(@RequestBody JSONObject jsonObject) {
		/*
		 * 将json对象转化成Java对象
		 */
		JSONObject fromObject = JSONObject.fromObject(jsonObject.get("studentinfo"));
		StudentInfo studentinfo = (StudentInfo) JSONObject.toBean(fromObject,StudentInfo.class);
		JSONArray fromObject2 = JSONArray.fromObject(jsonObject.get("books"));
		BookInfo[] array = (BookInfo []) JSONArray.toArray(fromObject2,BookInfo.class);
		List<BookInfo> bookList = Arrays.asList(array);
		//设置返回值对象
		Map<String, String> result = new HashMap<String, String>();
		//借阅权限的判断，当有借阅权限时，执行借阅图书
		int borrowAmout = bookList.size();
		Short borrowquantities = studentinfo.getBorrowquantities();
		if (borrowAmout == 0) {
			result.put("msg", "对不起，您还没有选择要借阅的书籍！");
		} else if (borrowAmout > borrowquantities) {
			result.put("msg", "对不起，您的借阅数量超过最大借阅量！");
		}else {
			for (BookInfo bookInfo : bookList) {
				borrowingInfoService.loanBook(studentinfo, bookInfo);
			}
			result.put("success", "您已经借书成功,请准时归还！");
		}
		return JSONArray.fromObject(result).toString();
	}

}
