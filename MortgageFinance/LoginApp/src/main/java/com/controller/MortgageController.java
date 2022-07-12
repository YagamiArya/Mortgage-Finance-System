package com.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.LoanDetails;
import com.bean.LoginBean;
import com.bean.Mortgage;
import com.bean.User;
import com.repository.MortgageRepo;

@Controller
public class MortgageController {
	
	@Autowired
	MortgageRepo repo;

	@RequestMapping(value = "/showMortgage", method = RequestMethod.GET)
	public String showMortgage(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "showMortgage";
	}
	
	@RequestMapping(value = "/addMortgage", method = RequestMethod.GET)
	public String addMortgage(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "AddMortgage";
	}
	
	@RequestMapping(value = "/terms&conditions", method = RequestMethod.GET)
	public String showTerms(@ModelAttribute("invalid") LoginBean loginBean) {
		
		return "terms&conditions";
	}
	
	@PostMapping("/addMortgageEntries")
	public String register(@ModelAttribute Mortgage m,HttpSession session)
	
	{
		System.out.println(m);
		repo.save(m);
		session.setAttribute("message", "Mortgage Added Successfully");
		return "AddMortgage";
	}
}
