package com.sdk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.sdk.dao.UserDAO;
import com.sdk.model.UserDetail;

@Controller
public class LoginController {
	
	
	@Autowired
	UserDAO userDAO;
		
	
	@Autowired
	HttpSession httpSession;
	
	@PostMapping(value="/validate")
	public String userhomepage(@RequestParam("username") String username,@RequestParam("password") String password)
	{
		ModelAndView mv = new ModelAndView("userhome");
		
		UserDetail user= userDAO.validate(username, password);
		
		if (user==null)
		{
			mv.addObject("errorMessage", "Invalid credentials, pls try agin.");
			return "login";
			
		}
		else
		{
			
			httpSession.setAttribute("user", user);
		
			httpSession.setAttribute("loggedInUserID", user.getUsername());
			
			String s = user.getRole();
			System.out.println(s);
			
			
						
			if(s.equals("ROLE_ADMIN"))
			{
				System.out.println("Admin page Opening");
				httpSession.setAttribute("isAdmin", true);
				return "AdminHome";
			}
			
			else
			{
				System.out.println("User page Opening");
				httpSession.setAttribute("is customer", true);
				return "home1";
			}
		}
		
	}
	
	@RequestMapping(value="/AdminHome")
	public String adminpage()
	{
		return "AdminHome";
	}
	
	@RequestMapping(value="/Logout")
	public String showLogout()
	{
		return "Login";
	}

}
