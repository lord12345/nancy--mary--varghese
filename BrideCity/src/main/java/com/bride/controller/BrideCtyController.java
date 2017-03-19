package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.service.*;






@Controller
public class BrideCtyController 
{
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	/*@RequestMapping("/Login")
	public String getLogin()
	{
		return "login";
	}
	
	
	@RequestMapping("/registration")
	public String getSignUp()
	{
		return "registration";
	}*/
	
	
	
	@RequestMapping("/")
	
	public String getHome(Model  model)
	{   
		
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		
		return "home";
	}

}
