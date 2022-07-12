package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bean.LoanDetails;

@Repository
public interface LoanRepo extends JpaRepository<LoanDetails, String>{

	
}
