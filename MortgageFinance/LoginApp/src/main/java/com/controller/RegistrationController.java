package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.LoanDetails;
import com.repository.LoanRepo;

@Controller
public class RegistrationController {
	
	@Autowired
	private LoanRepo repo;
	
	@GetMapping("/ApplyForLoan")
	public String home()
	{
		return "ApplyForLoan";
	}
	
	@PostMapping("/Apply")
	public String register(@ModelAttribute LoanDetails l,HttpSession session)
	
	{
		System.out.println(l);
		repo.save(l);
		session.setAttribute("message", "Applied for Loan Successfully");
		return "success";
	}

}
