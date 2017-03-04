package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		return "categories";
	}
	
	
	
	@RequestMapping("/addcategory")
	public String addCategory(@ModelAttribute("category") Category category)
	{
		
		categoryService.addCategory(category);
		return "redirect:/categoryPage";
	}
	
	
	@RequestMapping("/editCategory-{categoryId}")
	public String getCategoryById(Category category, @PathVariable("categoryId") int categoryId)
	{
		return "categories";
	}
	
	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(Model model,@PathVariable("categoryId") int categoryId)
	{
		
		categoryService.deleteCategory(categoryId);
		return "redirect:/categoryPage";
	}
	
}
