package com.library.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.dao.dgq.DepartmentInfoMapper;
import com.library.dao.dgq.ProfessionInfoMapper;
import com.library.dao.dgq.StudentInfoMapper;
import com.library.pojo.dgq.Borrowing;
import com.library.pojo.dgq.DepartmentInfo;
import com.library.pojo.dgq.ProfessionInfo;
import com.library.pojo.dgq.Student;
import com.library.pojo.dgq.StudentInfo;
import com.library.service.IStudentService;

@Service
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private StudentInfoMapper studentInfoMapper;
	
	@Autowired
	private DepartmentInfoMapper departmentInfoMapper;
	
	@Autowired
	private ProfessionInfoMapper professionInfoMapper;
	
	@Override
	public StudentInfo selectByPrimaryKey(long studentno) {
		return studentInfoMapper.selectByPrimaryKey(studentno);
	}

	@Override
	public DepartmentInfo selectByDepartmentNo(short departmentno) {
		return departmentInfoMapper.selectByDepartmentNo(departmentno);
	}

	@Override
	public ProfessionInfo selectByProfessionno(long professionno, short departmentid) {
		return professionInfoMapper.selectByProfessionno(professionno, departmentid);
	}

	@Override
	public int insertStudentInfo(Student student) {
		// TODO Auto-generated method stub
		return studentInfoMapper.insertStudentInfo(student);
	}

	@Override
	public Student selectByStudentno(long studentno) {
		// TODO Auto-generated method stub
		return studentInfoMapper.selectByStudentno(studentno);
	}

	@Override
	public List<Borrowing> selectBorrowingByStudentno(long studentno) {
		// TODO Auto-generated method stub
		return studentInfoMapper.selectBorrowingByStudentno(studentno);
	}

}
