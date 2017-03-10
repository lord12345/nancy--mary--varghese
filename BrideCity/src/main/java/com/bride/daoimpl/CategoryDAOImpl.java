package com.bride.daoimpl;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.CategoryDAO;
import com.bride.model.Category;
@Repository


public class CategoryDAOImpl implements CategoryDAO
{

	
	@Autowired
	 SessionFactory sessionFactory;

	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}
	
	public List<Category> fetchAllCategories()
	{
		 List<Category> categoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return categoryList;

    }

	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) 
	{
	
		
		List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category where categoryId = "+categoryId).getResultList();
		return getList.get(0);
		

	}

	public void deleteCategory(int categoryId)
	{
		
		sessionFactory.getCurrentSession().delete(getCategoryById(categoryId));
		
	
	}
	
}
	
	
	
	
	
	
	
	
	
	
	

