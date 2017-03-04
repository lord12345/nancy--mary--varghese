package com.bride.dao;

import java.util.List;

import com.bride.model.Category;
import com.bride.model.SubCategory;


public interface SubCategoryDAO 
{
	
	
	
	public void addSubCategory(SubCategory subCategory); 
	
	public List<SubCategory> fetchAllSubCategories();
	
	
	public SubCategory getSubCategoryById(int subCategoryId);

	public void deleteSubCategory(int subCategoryId);
	

}