package com.nt.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.entity.Employee;
import com.nt.service.IEmployeeService;

@Controller
public class EmployeeOperationController
{
	@Autowired
	private IEmployeeService empService;
	
	
	@GetMapping("/")
	public String showHome()
	{
		return "home_page";
	}
	
	@GetMapping("/report")
	public String showEmpReport(Map<String, Object> map)
	{
		List<Employee> emp=empService.showAllEmps();
		map.put("empResult", emp);
		return "emp_detail";
	}
	
	@GetMapping("/register")
	public String registerEmpShowForm(@ModelAttribute("empl") Employee emp)
	{
		return "emp_add";
	}
	
	@PostMapping("/register")
	public String registerEmp(Map<String,Object> map,@ModelAttribute("empl") Employee emp)
	{
		return "emp_add";
	}
}
