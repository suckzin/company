package com.kgitbank.student;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kgitbank.student.dto.StudentDTO;
import com.kgitbank.student.service.StudentMapper;

@Controller
public class StudentController {
	
	@Autowired
	private StudentMapper studentMapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "student";
	}
	
	@RequestMapping("/list_student.do")
	public String listStudent(HttpServletRequest req){
		List<StudentDTO> list = studentMapper.listStudent();
		req.setAttribute("listStudent", list);
		return "list";
	}
	
	@RequestMapping("/insert_student.do")
	public String insertStudent(@ModelAttribute StudentDTO dto) {
		int res = studentMapper.insertStudent(dto);
		return "redirect:list_student.do";
	}
	
	
	@RequestMapping("/delete_student.do")
	public String delete_student(@RequestParam String id) {
		int res = studentMapper.deleteStudent(id);
		return "redirect:list_student.do";
	}
	
	
	@RequestMapping("/find_student.do")
	public String find_student(@RequestParam String name,HttpServletRequest req) {
		List<StudentDTO> list= studentMapper.findStudent(name);
		req.setAttribute("listStudent",list);
		return "list";
	}
	

	
	

	
	
}













