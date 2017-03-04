package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.SubCategoryDAOImpl;

import com.bride.model.SubCategory;

@Service
@Transactional
public class SubCategoryService {
	@Autowired
	
	SubCategoryDAOImpl subCategoryDAOImpl;
	
	public void addSubCategory(SubCategory subCategory) 
	
	{
		subCategoryDAOImpl.addSubCategory(subCategory);
	}

	public List<SubCategory> fetchAllSubCategories()
	{
			return subCategoryDAOImpl.fetchAllSubCategories();
		
	}
	
	public SubCategory getSubCategoryById(int subCategoryId) 
	{
		return subCategoryDAOImpl.getSubCategoryById(subCategoryId);
	}

	public void deleteSubCategory(int subCategoryId) 
	{
		subCategoryDAOImpl.deleteSubCategory(subCategoryId);
	}
	
	
	
	
	
}
