package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.User;
import com.repository.UserRepo;


@Controller
public class UserRgistrationController {
	@Autowired
	private UserRepo repo;
	
	@GetMapping("/registerUser")
	public String home()
	{
		return "userRegistration";
	}
	
	@GetMapping("/registerAdmin")
	public String homeadmin()
	{
		return "Register-admin";
	}
	
	@PostMapping("/registerUserSave")
	public String register(@ModelAttribute User u,HttpSession session)
	
	{
		System.out.println(u);
		u.setName(u.getFirstname()+" "+u.getLastname());
		repo.save(u);
		session.setAttribute("message", "Customer Registered Successfully");
		return "userRegistration";
	}
	
	@PostMapping("/registerAdminSave")
	public String registeradmin(@ModelAttribute User u,HttpSession session)
	
	{
		System.out.println(u);
		u.setName(u.getFirstname()+" "+u.getLastname());
		u.setType("Admin");
		repo.save(u);
		session.setAttribute("message", "Admin Registered Successfully");
		return "Register-admin";
	}

}