package com.example.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.dto.EmployeeDto;
import com.example.demo.entity.Employee;
import com.example.demo.repository.EmployeeRepository;




@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	EmployeeRepository employeeRepository;

	@Override
	public Employee saveEmployee(EmployeeDto employeeDto) throws Exception {
		
		Employee employee = new Employee();
		
		employee.setName(employeeDto.getName());
		employee.setPhoneNo(employeeDto.getPhone());
		employee.setEmail(employeeDto.getEmail());
		employee.setPass(employeeDto.getPassword());
	//	employee.setSalary((employeeDto.getSalary()));
	//	employee.setEducation(employeeDto.getEducation());
		
		return employeeRepository.save(employee);
	}

	 @Override
	public Employee getEmployeeByEmailId(EmployeeDto employeDto) throws Exception {
		
		Employee emp = new Employee();
		try {
			
			emp = employeeRepository.getEmployeeByEmailId(employeDto.getEmail());
			   if(emp != null  && emp.getPass() != null) {
				 if(employeDto.getPassword().equalsIgnoreCase(emp.getPass())) {
					System.out.println("Login succesfull"+emp.getName()+"   "+emp.getEmail());
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
		
	}

