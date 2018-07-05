package com.sdk.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	
	
	
	
	@RequestMapping(value="/")
	public String showIndexPage()
	{
		return "home";
	}
	
	@RequestMapping(value="/home")
	public String showIndex()
	{
		return "home";
	}
	
	@RequestMapping(value="/Register")
	 public ModelAndView registerpage()
	 {
		 ModelAndView mv = new ModelAndView("Register");
		 mv.addObject("clicked register", true);
		 return mv;
	 }
	
	@RequestMapping(value="/Login")
	 public ModelAndView loginpage()
	 {
		 ModelAndView mv = new ModelAndView("Login");
		 mv.addObject("clicked login", true);
		 return mv;
	 }
	
	
	@RequestMapping(value="/Cart")
	public String showCartPage()
	{
		return "Cart";
	}
	
	

}
