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
	
	@RequestMapping("/aboutus")
	public String getAboutUs()
	{
		return "aboutus";
	}
	
	@RequestMapping("/payment")
	public String getPayment()
	{
		return "paymentfaqs";
	}
	
	@RequestMapping("/contactus")
	public String getContact()
	{
		return "contactus";
	}
	
	
	
	
	@RequestMapping("/order")
	public String getOrder()
	{
		return "ordercancellation";
	}
	
	@RequestMapping("/shippingpolicy")
	public String getShippingpolicy()
	{
		return "shippingpolicy";
	}
	
	@RequestMapping("/privacypolicy")
	public String getPrivacypolicy()
	{
		return "privacypolicy";
	}
	
	@RequestMapping("/terms")
	public String getTerms()
	{
		return "terms";
	}
	
	
	
	@RequestMapping("/returnpolicy")
	public String getReturnpolicy()
	{
		return "returnpolicy";
	}
	
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
