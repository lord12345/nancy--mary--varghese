package com.bride.dao;

import java.util.List;

import com.bride.model.Category;


public interface CategoryDAO 

{
	
	
	
	public void addCategory(Category category); 
	
	public List<Category> fetchAllCategories();
	
	public String fetchAllCategoriesByJson();
	
	public Category getCategoryById(int categoryId);

	public void deleteCategory(int categoryId);
	

}
