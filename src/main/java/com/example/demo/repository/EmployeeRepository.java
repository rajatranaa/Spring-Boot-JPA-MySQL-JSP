package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.entity.Employee;

public interface EmployeeRepository extends CrudRepository<Employee, Integer> {

	@Query(value = "SELECT * FROM employee u where u.EMAIL=:email ",nativeQuery=true
			) public Employee getEmployeeByEmailId(String email);

}
