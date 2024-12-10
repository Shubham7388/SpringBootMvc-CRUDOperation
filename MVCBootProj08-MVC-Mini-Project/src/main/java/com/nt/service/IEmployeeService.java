package com.nt.service;

import java.util.List;

import com.nt.entity.Employee;

public interface IEmployeeService
{
   public List<Employee> showAllEmps();
   public String registerEmps(Employee emp);
}
