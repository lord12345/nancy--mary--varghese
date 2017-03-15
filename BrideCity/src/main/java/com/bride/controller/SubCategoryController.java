package com.bride.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


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
		      /*    adding   Category,
              displaying category   and   subcategory  list  in   table*/
		
		
		model.addAttribute("subCategory",new SubCategory());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		
	    return "subcategories";
	}
	
	
	
	@RequestMapping("/addSubCategory")
	public String addSubCategory(@Valid @ModelAttribute("subCategory") SubCategory subCategory,BindingResult  result,Model  model)
	{
		
		
		if(result.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			return "subcategories";
		}
		
		
		subCategoryService.addSubCategory(subCategory);
		return "redirect:/subCategoryPage";
	}
	
	

	@RequestMapping("/updateSubCategoryById-{subCategoryId}")
	public String updateSubCategory(Model model,SubCategory subCategory, @PathVariable("subCategoryId") int subCategoryId)
	{   
		
		                   /*.......updating  current  data.........*/		
		model.addAttribute("subCategory", subCategoryService.getSubCategoryById(subCategoryId));
		
		    
		                 /* same  as  above*/
		
		
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		return "subcategories";
	}
	
	@RequestMapping("/deleteSubCategoryById-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		
		subCategoryService.deleteSubCategory(subCategoryId);
		return "redirect:/subCategoryPage";
	}
	
	
	
}
