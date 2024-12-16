package com.nt.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
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
		Sort sort=Sort.by(Sort.Order.asc("empno"));
		return empRepo.findAll(sort);
	}

	@Override
	public String registerEmps(Employee emp) {
		int idVal=empRepo.save(emp).getEmpno();
		return "Employee registered with id:: "+idVal;
	}

	@Override
	public Employee getEmployee(int no) {
		Employee emp=empRepo.findById(no).orElseThrow(()->new IllegalArgumentException());
	return emp;
	}

	@Override
	public String registerEditForm(Employee emp) {
		int idVal=empRepo.save(emp).getEmpno();
		return "Employee is updated with id:: "+idVal;
	}

	@Override
	public String deleteEmployeeById(int no) {
		empRepo.deleteById(no);
		return "Employee deleted with id:: "+no;
	}

	@Override
	public List<Employee> showEmpByDynamicSearch(Employee emp) {
		if(emp.getEname().equalsIgnoreCase("") || emp.getEname().length() == 0)
		{
			emp.setEname(null);
		}
		if(emp.getJob().equalsIgnoreCase("") || emp.getJob().length() == 0)
		{
			emp.setJob(null);
		}
		Example example=Example.of(emp);
		List<Employee> list=empRepo.findAll(example);
		return list;
	}
}
