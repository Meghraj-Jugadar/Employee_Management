package com.Main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Main.entity.Employee;



public interface UserRepository extends JpaRepository<Employee, Integer> {
		
}
