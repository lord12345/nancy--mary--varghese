package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.SubCategoryDAO;
import com.bride.model.SubCategory;

@Repository


public class SubCategoryDAOImpl implements SubCategoryDAO
{
	
	private  Session   session;
	@Autowired
	private SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subCategory) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);
		
	}
	
	public List<SubCategory> fetchAllSubCategories()
	{
		 List<SubCategory> getSubList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return getSubList;

    }
	
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryById(int subCategoryId)
	{
		try{
			List<SubCategory> getSubList = session.createQuery("from SubCategory where subCategoryId = "+subCategoryId+"").getResultList();
			System.out.println(subCategoryId);
			return getSubList.get(0);
			}
			catch(Exception e)
			{
				return null;
			}
		
	}

	public void deleteSubCategory(int subCategoryId)
	{
	
		SubCategory c = new SubCategory();
		c.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(c);
		
		
			
	}
	
}
	
