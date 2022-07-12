package com.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.LoanDetails;
import com.bean.User;
import com.repository.LoanRepo;
import com.repository.UserRepo;

@Controller
public class LoanOfficerController {

	@Autowired(required=true)
	UserRepo repo;
	
	LoanRepo loanRepo;
	
	
	@GetMapping("/loginLoanOfficer")
	public String login(Model model) {
		User user = new User();
		model.addAttribute("user",user);
		return "loginLoanOfficer";
	}
	
	@GetMapping("/viewLoanforCustomers")
	public String search(Model model, @ModelAttribute("loan") LoanDetails loan) {
		System.out.println(loan.getLoanApplicantNumber());
		return "showLoanDetails";
	}
	@PostMapping("/loanOfficerLogin")
	public String loginUser(ModelMap model, @ModelAttribute("user") User user) {
		System.out.println(user.getUserId());
		System.out.println(user.getPassword());
		System.out.println(user.getType());
		String userId = user.getUserId();
		if(repo.existsById(userId)) {
			Optional<User> userdata = repo.findById(userId);
			if(userdata.get().getType().equalsIgnoreCase("loan officer")) {
				if(user.getPassword().equals(userdata.get().getPassword())) {
					model.put("userId", userdata.get().getName());
					return "LoanOfficerDashboard";			
				}
				else {
					model.put("errorMsg","<h2 style = 'color:red;'>Password not matching!<h2>");
					return "loginLoanOfficer";
				}
			}
			else {
				model.put("errorMsg","<h2 style = 'color:red;'>You are not an Loan Officer!<h2>");
				return "loginLoanOfficer";
			}
		}
		else {
			model.put("errorMsg","<h2 style = 'color:red;'>UserId not present!<h2>");
			return "loginLoanOfficer";
		}
	}
	
	@PostMapping("/searchLoanforCustomers")
	public String viewLoan(ModelMap model, @ModelAttribute("loan") LoanDetails loan, HttpSession session) {
		System.out.println(loan.getLoanApplicantNumber());
		session.setAttribute("loanApplicantNumber", loan.getLoanApplicantNumber());
		return "showLoanDetails";
		
		
	}

}
