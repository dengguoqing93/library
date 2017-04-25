package com.library.test;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.library.action.StudentInfoAction;
import com.library.dao.dgq.DepartmentInfoMapper;
import com.library.dao.dgq.ProfessionInfoMapper;
import com.library.pojo.dgq.DepartmentInfo;
import com.library.pojo.dgq.ProfessionInfo;
import com.library.service.IStudentService;
import com.library.service.impl.StudentServiceImpl;

public class StudentInfoTest {

	private static ApplicationContext ac;
    private static DepartmentInfoMapper departmentInfoMapper;
    private static ProfessionInfoMapper professionInfoMapper;
    private static IStudentService serviceImpl;
    private static StudentInfoAction sAction;
    
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
       ac = new ClassPathXmlApplicationContext("applicationContext.xml");
       departmentInfoMapper = ac.getBean(DepartmentInfoMapper.class);
       professionInfoMapper = ac.getBean(ProfessionInfoMapper.class);
       serviceImpl = ac.getBean(IStudentService.class);
       sAction = ac.getBean(StudentInfoAction.class);
    }
	
	@Test
	public void testDepartment() {
		DepartmentInfo departmentInfo = departmentInfoMapper.selectByDepartmentNo((short) 2);
		System.out.println(departmentInfo.getDepartmentname());
	}
	
	@Test
	public void testProfession() {
		ProfessionInfo profession = professionInfoMapper.selectByProfessionno((long) 2, (short) 2);
		System.out.println(profession);
	}
	
	@Test
	public void testStudentService() {
		DepartmentInfo department = serviceImpl.selectByDepartmentNo((short) 2);
		System.out.println(department.getDepartmentname());
		ProfessionInfo profession = serviceImpl.selectByProfessionno((long) 2, (short) 2);
		System.out.println(profession);
	}
	
	@Test
	public void testStudetnAction() {
		String json = "{'studentno':1201020105}";
		JSONObject jsonObject = JSON.parseObject(json);
		/*String studentno =  jsonObject.get("studentno").toString();
		System.out.println(studentno);*/
		String vertifyStudentNo = sAction.vertifyStudentNo(jsonObject);
		System.out.println(vertifyStudentNo);
	}
}
