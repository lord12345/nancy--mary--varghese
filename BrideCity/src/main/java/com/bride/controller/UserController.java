package com.bride.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.User;
import com.bride.service.UserService;
@Controller
public class UserController 

{

	@Autowired
	UserService userService;
	
	
	@RequestMapping("/registrationPage")
	public String getSignupPage(Model model )
	{
		model.addAttribute("user", new User());
		return "signup";
	}
		
	
	
	
	@RequestMapping("/addUser")
	public String addUser(@Valid @ModelAttribute("user")User user, BindingResult result)
	{
		
		if(result.hasErrors())
		{
		  
	      return  "signup";
	      
		}
		
		
		
		userService.addUser(user);
		return "redirect:/login";
	
	}

	
	
	@RequestMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response)
	{
	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	if(authentication!=null)
	{
	new SecurityContextLogoutHandler().logout(request,response,authentication);
	}
	return "login";
	}
	
	
}
