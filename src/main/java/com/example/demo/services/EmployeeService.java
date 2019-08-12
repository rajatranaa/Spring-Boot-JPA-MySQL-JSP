package com.example.demo.services;

import java.util.List;

import com.example.demo.dto.EmployeeDto;
import com.example.demo.entity.Employee;
public interface EmployeeService {
	
	public Employee saveEmployee(EmployeeDto employeDto) throws Exception;
	
	public Employee getEmployeeByEmailId(EmployeeDto employeDto) throws Exception;

	public List<Employee> getAllEmployeeList() throws Exception;

}
