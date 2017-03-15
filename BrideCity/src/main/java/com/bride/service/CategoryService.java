package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.CategoryDAOImpl;
import com.bride.model.Category;

@Service
@Transactional
public class CategoryService {
	@Autowired
	
	CategoryDAOImpl categoryDAOImpl;
	
	public void addCategory(Category category) 
	
	{
		categoryDAOImpl.addCategory(category);
	}

	public List<Category> fetchAllCategories()
	
	{
			return categoryDAOImpl.fetchAllCategories();
		
	}
	
	public String fetchAllCategoriesByJson()
	{
		return categoryDAOImpl.fetchAllCategoriesByJson();
	}
	
	
	public Category getCategoryById(int categoryId) 
	
	{
		return categoryDAOImpl.getCategoryById(categoryId);
	}

	public void deleteCategory(int categoryId) 
	
	{
		categoryDAOImpl.deleteCategory(categoryId);
	}

	
	
}
