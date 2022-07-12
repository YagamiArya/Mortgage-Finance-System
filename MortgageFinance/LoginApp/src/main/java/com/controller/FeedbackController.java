package com.controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.LoanDetails;
import com.bean.User;
import com.repository.LoanRepo;
import com.repository.UserRepo;

@Controller
public class FeedbackController {
	
	@Autowired
	private UserRepo repo;
	
	@GetMapping("/getFeedback")
	public String home()
	{
		return "feedback";
	}
	
	@PostMapping("/updateFeedback")
	public String updateFeedback(@ModelAttribute User user,HttpSession session)
	
	{
		String userId = user.getUserId();
		if(repo.existsById(userId)) {
			Optional<User> userdata = repo.findById(userId);
			if(!(userdata.get().getFeedback()==null)) {
				System.out.println(user.getFeedback());
				session.setAttribute("feedbackMsg", "Feedback Already Given");
				return "feedback";
				
			}
			else {
				repo.updatefeedback(user.getFeedback(), userId);
				session.setAttribute("feedbackMsg", "Feedback Submitted Successfully");
				return "feedback";
			}
		}
		else {
			session.setAttribute("feedbackMsg", "User not found");
			return "feedback";
			
		}
	}

}
