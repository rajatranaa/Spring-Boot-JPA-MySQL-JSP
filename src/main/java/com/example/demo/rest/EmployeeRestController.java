package com.example.demo.rest;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.Employee;
import com.example.demo.services.EmployeeService;

@RestController
public class EmployeeRestController {
	
	@Autowired
	EmployeeService  employeeService;
	
	
	
	 @RequestMapping(value= "/getAllEmployee", method = RequestMethod.GET)   
	 public int getEmployeeeList(HttpServletRequest req) throws Exception {
		
		List<Employee>  emp = employeeService.getAllEmployeeList();
		return emp.size();
	}

}
