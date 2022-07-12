package com.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.Email;
import com.bean.LoginBean;
import com.bean.User;
import com.repository.EmailRepo;
import com.repository.UserRepo;

@Controller
public class PasswordResetController {
	
	@Autowired
	UserRepo repo;
	
	@Autowired
	EmailRepo emailRepo;
	
	@RequestMapping(value = "/resetPassword", method = RequestMethod.GET)
	public String showForgotPassword(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "Forgot";
	}
	
//	@RequestMapping(value = "/ForgotUserId", method = RequestMethod.GET)
//	public String showForgotUsername(@ModelAttribute("invalid") LoginBean loginBean) {
//		
//		return "ForgotUserName";
//	}
//	
//	@PostMapping("/securityQuestion")
//	public String verify(ModelMap model, @ModelAttribute("user") User user) {
//		System.out.println(user.getUserId());
//		String userId = user.getUserId();
//		Optional<User> userdata = null;
//		try {
//			userdata = repo.findById(userId);
//		}catch(Error e) {
//			return "ForgotPassword";
//		}
//		System.out.println(user.getPassword());
//		System.out.println(user.getType());
//		System.out.println(user.getSecurityQuestion());
//		System.out.println(user.getAnswer());
//		if(userdata.get().getSecurityQuestion()!=null) {
//			model.put("securityQuestion", userdata.get().getSecurityQuestion());
//			model.put("userId", user.getUserId());
//			return "SecurityQuestion";			
//		}
//		else { 	 	
//			model.put("errorMsg","<h2 style = 'color:red;'>UserId Not Found!!<h2>");
//			return "ForgotPassword";
//		}
//	}
//	
//	@PostMapping("/securityQuestionUserId")
//	public String verifyEmail(ModelMap model, @ModelAttribute("user") User user, @ModelAttribute("email") Email email) {
//		System.out.println(user.getEmail());
//		System.out.println(user.getUserId());
//		String emailId = user.getEmail();
//		Optional<Email> emailData = emailRepo.findById(emailId);
//		String userId = emailData.get().getUserId();
//		Optional<User> userdata = repo.findById(userId);
//		System.out.println(userdata.get().getUserId());
//		System.out.println(userdata.get().getSecurityQuestion());
//		System.out.println(userdata.get().getAnswer());
//			
//		
//		if(userdata.get().getSecurityQuestion()!=null) {
//			model.put("securityQuestion", userdata.get().getSecurityQuestion());
//			model.put("emailvalue", emailId);
//			return "SecurityQuestionUserId";			
//		}
//		else { 	 	
//			model.put("errorMsg","<h2 style = 'color:red;'>Email Not Found!!<h2>");
//			return "ForgotUserName";
//		}
//	}
//	
//	@PostMapping("/showPassword")
//	public String showPassword(ModelMap model, @ModelAttribute("user") User user) {
//		
//		String emailId = user.getEmail();
//		Optional<Email> emailData = emailRepo.findById(emailId);
//		String userId = emailData.get().getUserId();
//		Optional<User> userdata = repo.findById(userId);
//		if(user.getAnswer().equalsIgnoreCase(userdata.get().getAnswer())) {
//			model.put("password","Your Password is: "+ userdata.get().getPassword());
//			model.put("securityQuestion", userdata.get().getSecurityQuestion());
//			model.put("passwordReset", "<a href='resetPassword'> Do you want to reset password?</a>");
//			return "SecurityQuestion";			
//		}
//		else { 	 	
//			model.put("errorMsg","<h2 style = 'color:red;'>Wrong Answer!!!<h2>");
//			return "SecurityQuestion";
//		}
//	}
//		@PostMapping("/showUserId")
//		public String showUserId(ModelMap model, @ModelAttribute("user") User user, @ModelAttribute("email") Email email) {
//			
//			String emailId = user.getEmail();
//			Optional<Email> emailData = emailRepo.findById(emailId);
//			String userId = emailData.get().getUserId();
//			Optional<User> userdata = repo.findById(userId);
//			if(user.getAnswer().equalsIgnoreCase(userdata.get().getAnswer())) {
//				model.put("password","Your Password is: "+ userdata.get().getPassword());
//				model.put("securityQuestion", userdata.get().getSecurityQuestion());
//				model.put("userId", user.getUserId());
//				return "SecurityQuestion";			
//			}
//			else { 	 	
//				model.put("errorMsg","<h2 style = 'color:red;'>Wrong Answer!!!<h2>");
//				return "SecurityQuestion";
//			}
//			
//	}

}














