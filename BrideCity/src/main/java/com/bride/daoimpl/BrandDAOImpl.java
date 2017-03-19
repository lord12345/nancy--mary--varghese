package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.BrandDAO;
import com.bride.model.Brand;
import com.bride.model.Category;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
@Repository


public class BrandDAOImpl implements BrandDAO
{
	
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addBrand(Brand brand) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(brand);
		
	}
	
	public List<Brand> fetchAllBrands()
	{
		 List<Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return brandList;

    }

	public String fetchAllBrandsByJson() {
		List<Brand> brandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		Gson g =  new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(brandList);
		return list;
	}
	
	
	
	@SuppressWarnings("unchecked")
	public Brand getBrandById(int brandId) 
	
	{
	
	    List<Brand> getList = sessionFactory.getCurrentSession().createQuery("from Brand where brandId = "+brandId).getResultList();
		return getList.get(0);
		
	}

	public void deleteBrand(int brandId)
	{
		sessionFactory.getCurrentSession().delete(getBrandById(brandId));
		

	}
	
}
	
	
	
	
	
	
	
	
	
	
	

