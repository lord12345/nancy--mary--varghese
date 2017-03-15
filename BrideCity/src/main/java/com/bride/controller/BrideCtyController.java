package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;




import com.bride.service.CategoryService;
import com.bride.service.ProductService;

@Controller
public class BrideCtyController 
{
	
	@Autowired
	CategoryService  categoryService;
	
	@Autowired
	ProductService  productService;
	
	
	
	@RequestMapping("/Login")
	public String getLogin()
	{
		return "login";
	}
	
	
	@RequestMapping("/SignUp")
	public String getSignUp()
	{
		return "signup";
	}
	
	
	
	@RequestMapping("/")
	
	public String getHome(Model  model)
	{   
		
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("productListJSON", productService.fetchAllProductsJSON());
		return "home";
	}

}
