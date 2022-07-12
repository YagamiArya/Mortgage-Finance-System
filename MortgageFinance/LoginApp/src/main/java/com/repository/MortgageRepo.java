package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bean.Mortgage;


@Repository
public interface MortgageRepo extends JpaRepository<Mortgage, String> {
	
	
	
}
