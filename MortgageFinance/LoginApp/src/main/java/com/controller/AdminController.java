package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.User;
import com.repository.UserRepo;

@Controller
public class AdminController {

	@Autowired(required=true)
	UserRepo repo;
	
	
	@GetMapping("/loginadmin")
	public String login(Model model) {
		User user = new User();
		model.addAttribute("user",user);
		return "loginAdmin";
	}
	@PostMapping("/adminLogin")
	public String loginUser(ModelMap model, @ModelAttribute("user") User user) {
		System.out.println(user.getUserId());
		System.out.println(user.getPassword());
		System.out.println(user.getType());
		String userId = user.getUserId();
		if(repo.existsById(userId)) {
			Optional<User> userdata = repo.findById(userId);
			if(userdata.get().getType().equalsIgnoreCase("admin")) {
				if(user.getPassword().equals(userdata.get().getPassword())) {
					model.put("userId", userdata.get().getName());
					return "adminDashboard";			
				}
				else {
					model.put("errorMsg","<h2 style = 'color:red;'>Password not matching!<h2>");
					return "loginAdmin";
				}
			}
			else {
				model.put("errorMsg","<h2 style = 'color:red;'>You are not an Admin!<h2>");
				return "loginAdmin";
			}
		}
		else {
			model.put("errorMsg","<h2 style = 'color:red;'>UserId not present!<h2>");
			return "loginAdmin";
		}
	}

}
