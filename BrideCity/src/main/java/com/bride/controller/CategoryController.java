package com.bride.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.Category;
import com.bride.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	

	
	@RequestMapping("/categoryPage")
	public String getCategoryPage(Model model)
	{
		model.addAttribute("category",new Category());
	    model.addAttribute("categoryList", categoryService.fetchAllCategories());
	    model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		return "categories";
	}
	
	
	
	@RequestMapping("/addcategory")
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result,Model model)
	{
		
		if(result.hasErrors())
		{
		  model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
	      return  "categories";
	      
		}
		
		categoryService.addCategory(category);
		return "redirect:/categoryPage";
	
	}
	
	
	@RequestMapping("/updateCategoryById-{categoryId}")
	public String updateCategory(Model model, @PathVariable("categoryId") int categoryId)
	{
		model.addAttribute("category", categoryService.getCategoryById(categoryId));
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		return "categories";
	}
	
	
	
	
	
	
	@RequestMapping("/deleteCategoryById-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId)
	{
		
		categoryService.deleteCategory(categoryId);
		return "redirect:/categoryPage";
	}
	
}
