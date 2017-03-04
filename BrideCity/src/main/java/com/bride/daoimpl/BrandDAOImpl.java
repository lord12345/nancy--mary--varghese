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
	private    Session  session ;
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addBrand(Brand brand) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(brand);
		
	}
	
	public List<Brand> fetchAllBrands()
	{
		 List<Brand> getBrandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return getBrandList;

    }

	@SuppressWarnings("unchecked")
	public Brand getBrandById(int brandId) {
	
		try{
		List<Brand> getBrandList = session.createQuery("from Brand where brandId = "+brandId+"").getResultList();
		System.out.println(brandId);
		return getBrandList.get(0);
		}
		catch(Exception e)
		{
			return null;
		}
	
		

	}

	public void deleteBrand(int brandId)
	{
		Brand c = new Brand();
		c.setBrandId(brandId);
		sessionFactory.getCurrentSession().delete(c);
		
		

	}
	
}
	
	
	
	
	
	
	
	
	
	
	

