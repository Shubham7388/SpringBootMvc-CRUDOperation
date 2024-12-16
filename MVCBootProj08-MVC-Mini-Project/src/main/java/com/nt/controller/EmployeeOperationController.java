package com.nt.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String showEmpReport(Map<String, Object> map, @ModelAttribute("emplye") Employee emplye)
	{
		List<Employee> emp1=empService.showAllEmps();
		map.put("empResult", emp1);
		return "emp_detail";
	}
	
	@GetMapping("/register")
	public String registerEmpShowForm(@ModelAttribute("empl") Employee emp)
	{
		return "emp_add";
	}
	
	
	//Problem1-->Repeation of logics and calling
	//Problem2-->Double Posting problem
//	@PostMapping("/register")
//	public String registerEmp(Map<String,Object> map,@ModelAttribute("empl") Employee emp1)
//	{
//		String msg=empService.registerEmps(emp1);
//		List<Employee> emp=empService.showAllEmps();
//		map.put("resultMsg", msg);
//		map.put("empResult", emp);
//		return "emp_detail";
//	}
	
	//Problem1-->Scope is fixed so after redirection there is no scope of this method
//	@PostMapping("/register")
//	public String registerEmp(Map<String,Object> map,@ModelAttribute("empl") Employee emp)
//	{
//		String msg=empService.registerEmps(emp);
//		map.put("resultMsg", msg);
//		return "redirect:report";
//	}
	
	
	//Best in all of these
	@PostMapping("/register")
	public String registerEmp(RedirectAttributes attrs,@ModelAttribute("empl") Employee emp)
	{
		String msg=empService.registerEmps(emp);
		attrs.addFlashAttribute("resultMsg", msg);
		return "redirect:report";
	}
	
	@GetMapping("/edit")
	public String getEditEmpForm(@RequestParam("no") int no,@ModelAttribute("emply") Employee emp)
	{
		Employee emp1=empService.getEmployee(no);
		BeanUtils.copyProperties(emp1, emp);
		return "emp_edit";
	}
	
	@PostMapping("/edit")
	public String submitEditForm(RedirectAttributes aatrs,@ModelAttribute("emply") Employee emp)
	{
		String msg=empService.registerEditForm(emp);
		aatrs.addFlashAttribute("editMsg", msg);
		return "redirect:report";
	}
	
	@GetMapping("/delete")
	public String deleteEmpsById(RedirectAttributes attrs,@RequestParam("no") int no)
	{
		String msg=empService.deleteEmployeeById(no);
		attrs.addFlashAttribute("deleteMsg", msg);
		return "redirect:report";
	}
	
	@GetMapping("/search")
	public String showSearchForm(@ModelAttribute("emplye") Employee emp)
	{
		return "emp_search";
	}
	
	@PostMapping("/search")
	public String submitSearchForm(Map<String,Object> map,@ModelAttribute("emplye") Employee emplye)
	{
		System.out.println(emplye);
		List<Employee> list=empService.showEmpByDynamicSearch(emplye);
		map.put("empResult",list);
		return "emp_detail";
	}
}
