package com.library.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.library.pojo.dgq.Borrowing;
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
		Map<String, String> map = new HashMap<String,String>();
		String jsonString = null;
		if (studentSelect != null) {
			map.put("msg", "该用户已添加");
			jsonString = JSON.toJSONString(map);
		}else{
			jsonString = parseStudentno(studentno,map);
		}
		return jsonString;
		
		
	}
	/*
	 * 解析传入的学号
	 */
	private String parseStudentno(String studentno,Map<String, String> map) {
		short departmentno = Short.parseShort(studentno.substring(2, 4));
		long professionno = Long.parseLong(studentno.substring(4, 6));
		String classno = studentno.substring(6,8);
		DepartmentInfo department = studentService.selectByDepartmentNo(departmentno);
		ProfessionInfo profession = studentService.selectByProfessionno(professionno, departmentno);
		if (department != null && profession != null) {
			/*
			 * 返回值的包装
			 */
			map.put("departmentName", department.getDepartmentname());
			map.put("professionName", profession.getProfessionname());
			map.put("classno", classno);
		}else {
			map.put("msg","输入的学号有误！");
		}
		String jsonString = JSON.toJSONString(map);
		
		return jsonString;
		
	}
	
	/*
	 *添加学生信息 
	 */
	@RequestMapping(value="addStudent")
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
	/*
	 * 根据输入的学号返回对应的学生信息
	 */
	@RequestMapping(value="selectStudent")
	@ResponseBody
	public String selectStudent(String studentno) {
		Student student = studentService.selectByStudentno(Long.parseLong(studentno));
		Map<String, Object> map = new HashMap<String,Object>();
		if (student==null) {
			map.put("msg", "输入的学号不存在");
		}else{
			List<Student> list = new ArrayList<Student>();
			list.add(student);
			map.put("rows", list);
		}
		return JSON.toJSONString(map);
	}
	
	/*
	 * 根据学号返回该学生的借书信息
	 */
	@RequestMapping(value="selectBorrowingByStudentno")
	@ResponseBody
	public String selectBorrowingByStudentno(String studentno) {
		List<Borrowing> borringList = studentService.selectBorrowingByStudentno(Long.parseLong(studentno));
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("total", borringList.size());
		map.put("rows", borringList);
		return JSON.toJSONString(map);
	}
}
