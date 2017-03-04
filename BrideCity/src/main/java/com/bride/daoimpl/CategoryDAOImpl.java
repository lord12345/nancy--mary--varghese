package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.CategoryDAO;
import com.bride.model.Category;
@Repository


public class CategoryDAOImpl implements CategoryDAO
{
	private    Session  session ;
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}
	
	public List<Category> fetchAllCategories()
	{
		 List<Category> getList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return getList;

    }

	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) {
	
		try{
		List<Category> getList = session.createQuery("from Category where categoryId = "+categoryId+"").getResultList();
		System.out.println(categoryId);
		return getList.get(0);
		}
		catch(Exception e)
		{
			return null;
		}
	
		

	}

	public void deleteCategory(int categoryId) {
		Category c = new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
		
		

	}
	
}
	
	
	
	
	
	
	
	
	
	
	

