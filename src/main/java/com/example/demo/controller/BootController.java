package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dto.EmployeeDto;
import com.example.demo.entity.Employee;
import com.example.demo.services.EmployeeService;



@Controller
public class BootController {

	
	@Autowired
	EmployeeService  employeeService;
	
	
	   @RequestMapping(value= "/saveEmployee", method = RequestMethod.POST)    
	    public  ModelAndView saveEmp(EmployeeDto employeDto, HttpServletRequest req ) throws Exception 
	    {
	    	System.out.println("hello");
	     	ModelAndView model = new ModelAndView();
	        employeeService.saveEmployee(employeDto);
	     	model.setViewName("login");
	     	return model;
	    }
	    
	    @RequestMapping(value = "/goToLoginPage")
		 public ModelAndView goToLoginPage(HttpServletRequest request,HttpServletResponse response) throws Exception {
		 ModelAndView model = new ModelAndView();
		 model.setViewName("login");
		 return model;
	    }
	    
	    @RequestMapping(value = "/getLoginDetails",  method = RequestMethod.POST)
		 public ModelAndView getLoginDetails(EmployeeDto employeDto, HttpServletRequest req ) throws Exception {
	     ModelAndView model = new ModelAndView();	
	     Employee employee = new Employee();	
	     employee =  employeeService.getEmployeeByEmailId(employeDto);
	     if(employee != null  && ! employee.getEmail().isEmpty()) {
	    	 model.setViewName("agriculture"); 
	    	 model.addObject("employee", employee);
	     }else {
	    	 int flag = 13;
	    	 model.setViewName("login");
	    	 model.addObject("flag", flag);
	     }
		 return model;
	    }
	    
	    @RequestMapping(value = "/agriculture")
		public ModelAndView goBackToHome(HttpServletRequest request) {
			ModelAndView model = new ModelAndView();
			model.setViewName("index");
			return model;
		}
	
}
