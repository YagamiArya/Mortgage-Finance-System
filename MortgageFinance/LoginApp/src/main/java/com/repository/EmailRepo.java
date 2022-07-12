package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bean.Email;

public interface EmailRepo extends JpaRepository<Email, String>{

}
