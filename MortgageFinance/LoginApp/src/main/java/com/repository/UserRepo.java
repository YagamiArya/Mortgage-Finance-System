package com.repository;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.User;


@Repository
@Qualifier("repo")
public interface UserRepo extends JpaRepository<User, String>, CrudRepository<User, String> {
	
	User findByEmail(String email);
	
	@Transactional
	@Modifying
	@Query("update User u set u.password = :password where u.userId = :userId")
	void updatePassword(@Param("password") String password, @Param("userId") String UserId);
	
	@Transactional
	@Modifying
	@Query("update User u set u.feedback = :feedback where u.userId = :userId")
	void updatefeedback(@Param("feedback") String feedback, @Param("userId") String UserId);
	 
	
}
