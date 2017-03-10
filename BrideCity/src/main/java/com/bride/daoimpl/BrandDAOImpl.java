package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.BrandDAO;
import com.bride.model.Brand;
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
		 List<Brand> BrandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return BrandList;

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
	
	
	
	
	
	
	
	
	
	
	

