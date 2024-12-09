package com.nt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.entity.Employee;
import com.nt.repository.IEmployeeRepository;

@Service("empService")
public class IEmployeeServiceImpl implements IEmployeeService
{
	@Autowired
	private IEmployeeRepository empRepo;
	
	@Override
	public List<Employee> showAllEmps() 
	{
		return empRepo.findAll();
	}
}
