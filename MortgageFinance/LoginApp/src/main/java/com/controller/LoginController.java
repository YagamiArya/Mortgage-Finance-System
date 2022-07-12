package com.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.LoginBean;
import com.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService service;

//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public String showLoginpage(@ModelAttribute("login") LoginBean loginBean) {
//
//		return "login";
//	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(ModelMap model) {
		model.put("logoutMsg", "<br><br><div class=\"alert success\">\r\n"
				+ "  <span class=\"closebtn\">&times;</span>  \r\n"
				+ "  <strong>Success!</strong> successfully Logout!\r\n"
				+ "</div>\r\n"
				+ "");
		return "Home";
	}
	
	@RequestMapping(value = "/invalid", method = RequestMethod.GET)
	public String showInvalidpage(@ModelAttribute("invalid") LoginBean loginBean) {

		return "invalid";
	}
	
	@RequestMapping(value = "/Forgot", method = RequestMethod.GET)
	public String showForgotpage(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "Forgot";
	}
	
	@RequestMapping(value = "/SecurityQuestion", method = RequestMethod.GET)
	public String showOuestions(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "SecurityQuestion";
	}
	
	
	
	@RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String showHome(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "Home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showHomePage(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "Home";
	}
	
//	@RequestMapping(value = "/ApplyForLoan", method = RequestMethod.GET)
//	public String showApplyforLoan(@ModelAttribute("invalid") LoginBean loginBean) {
//
//		return "ApplyForLoan";
//	}
	
	@RequestMapping(value = "/Register-admin", method = RequestMethod.GET)
	public String registerAdmin(@ModelAttribute("invalid") LoginBean loginBean) {

		return "Register-admin";
	}
	
	@RequestMapping(value = "/Register", method = RequestMethod.GET)
	public String register(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "Register";
	}
	
	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String showSucess(@ModelAttribute("invalid") LoginBean loginBean) {

		return "success";
	}
	
	@RequestMapping(value = "/selectProfile", method = RequestMethod.GET)
	public String showProfile(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "selectProfile";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String checkLoginDetails(ModelMap model, @RequestParam String userId, @RequestParam String password, HttpServletRequest request) {
		if(userId.equals("admin")&& password.equals("root")) {
			request.getSession().setAttribute("userId", userId);
			return "success";
		}
		model.put("errorMsg","UserId or Password not correct");
		return "login";
	}
	
	@RequestMapping(value = "ApplyForLoan", method = RequestMethod.POST)
	public String submitDetails(ModelMap model) {
		return "success";
	}

}
