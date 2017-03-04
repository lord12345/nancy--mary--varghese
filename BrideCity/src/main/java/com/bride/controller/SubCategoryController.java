package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.Category;
import com.bride.model.SubCategory;
import com.bride.service.CategoryService;
import com.bride.service.SubCategoryService;
@Controller
public class SubCategoryController 
{
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	CategoryService categoryService;
	
	
	
	@RequestMapping("/subCategoryPage")
	public String getSubCategoryPage(Model model)
	{   
		

		model.addAttribute("subCategory",new SubCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
	    return "subcategories";
	}
	
	
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@ModelAttribute("subCategory") SubCategory subCategory)
	{
		
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	

	@RequestMapping("/editSubCategory-{subCategoryId}")
	public String getSubCategoryById(Model model,SubCategory subCategory, @PathVariable("subCategoryId") int subCategoryId)
	{   
		
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "subcategories";
	}
	
	@RequestMapping("/deleteSubCategory-{subCategoryId}")
	public String deleteSubCategory(Model model,@PathVariable("subCategoryId") int subCategoryId)
	{
		
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
	
	
	
}
