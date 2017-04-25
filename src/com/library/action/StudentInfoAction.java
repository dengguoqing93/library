package com.library.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.library.pojo.dgq.DepartmentInfo;
import com.library.pojo.dgq.ProfessionInfo;
import com.library.pojo.dgq.Student;
import com.library.pojo.dgq.StudentInfo;
import com.library.service.IStudentService;

@Controller
@RequestMapping(value="student",produces="text/html;charset=utf-8",method=RequestMethod.POST)
public class StudentInfoAction {
	
	@Autowired
	private IStudentService studentService;
	
	/**
	 * 判断输入的学号是否符合要求（即院系编号和专业编号是否合理）
	 * @param jsonObject
	 * @return
	 */
	@RequestMapping(value="vertifyStudentNo")
	@ResponseBody
	public String vertifyStudentNo(@RequestBody JSONObject jsonObject) {
		/*
		 * 对获取的学生编号进行处理
		 */
		String studentno = jsonObject.get("studentno").toString();
		
		StudentInfo studentSelect = studentService.selectByPrimaryKey(Long.parseLong(studentno));
		if (studentSelect != null) {
			System.out.println("进入该函数");
			return null;
		}else {
			return parseStudentno(studentno);
		}
		
	}
	/*
	 * 解析传入的学号
	 */
	private String parseStudentno(String studentno) {
		short departmentno = Short.parseShort(studentno.substring(2, 4));
		long professionno = Long.parseLong(studentno.substring(4, 6));
		String classno = studentno.substring(6,8);
		DepartmentInfo department = studentService.selectByDepartmentNo(departmentno);
		ProfessionInfo profession = studentService.selectByProfessionno(professionno, departmentno);
		if (department != null && profession != null) {
			/*
			 * 返回值的包装
			 */
			Map<String, String> map = new HashMap<String,String>();
			map.put("departmentName", department.getDepartmentname());
			map.put("professionName", profession.getProfessionname());
			map.put("classno", classno);
			String jsonString = JSON.toJSONString(map);
			return jsonString;
		}
		return null;
	}
	
	/*
	 *添加学生信息 
	 */
	@RequestMapping(value="addStudent",produces="text/html;charset=utf-8",method=RequestMethod.POST)
	@ResponseBody
	public String addStudent(Student student) {
		/**
		 * 学生设置
		 */
		Student tidyStudent = tidyStudent(student);
		int result = studentService.insertStudentInfo(tidyStudent);
		if (result == 0) {
			return "false";
		}
		return "true";
	}
	
	private Student tidyStudent(Student student){
		String studentno = Long.toString(student.getStudentno());
		//班级号设置
		student.setGrade(Short.parseShort(studentno.substring(0, 2)));
		String pwd = studentno.substring(studentno.length()-6);
		student.setPwd(pwd);
		return student;
	}
}
