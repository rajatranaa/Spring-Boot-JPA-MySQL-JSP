package com.example.demo.rest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.EmployeeDto;
import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeRepository;
import com.example.demo.services.EmployeeService;

@RestController
public class EmployeeRestController {
	
	@Autowired
	EmployeeService  employeeService;
	@Autowired
	EmployeeRepository employeeRepository;
	
	
	 @RequestMapping(value= "/getAllEmployee", method = RequestMethod.GET)   
	 public int getEmployeeeList(HttpServletRequest req) throws Exception {
		
		List<Employee>  emp = employeeService.getAllEmployeeList();
		return emp.size();
	}

	 @RequestMapping(value = "/getAllEmployeeDetails", method=RequestMethod.GET)
	 public List<Employee> getAllEmployeeDetails(HttpServletRequest req) throws Exception{
			 
		 List<Employee>  emp = employeeService.getAllEmployeeList();
		 return emp; 
	 }
	 
	 @RequestMapping(value = "/getProfile", method=RequestMethod.GET)
	 public Employee getProfile(@RequestParam(value = "email", required = false) String email) throws Exception{
		
		 Employee employee = new Employee();
		 employee = employeeRepository.getEmployeeByEmailId(email);
		 return employee; 
	 }
}
