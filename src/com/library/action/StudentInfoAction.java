package com.library.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

@Controller
@RequestMapping(value="student")
public class StudentInfoAction {
	
	@RequestMapping(value="add",produces="text/html;charset=utf-8")
	@ResponseBody
	public String addStudent(@RequestBody JSONObject jsonObject) {
		String studentno = jsonObject.toJSONString();
		short departmentno = Short.parseShort(studentno.substring(2, 4));
		long professionno = Long.parseLong(studentno.substring(4, 6));
		
		return "";
	}
}
