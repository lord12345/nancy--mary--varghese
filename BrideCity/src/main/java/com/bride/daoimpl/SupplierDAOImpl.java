package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.SupplierDAO;
import com.bride.model.Supplier;
@Repository


public class SupplierDAOImpl implements SupplierDAO
{
	private    Session  session ;
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addSupplier(Supplier supplier) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}
	
	public List<Supplier> fetchAllSuppliers()
	{
		 List<Supplier> getSupList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return getSupList;

    }

	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierId) {
	
		try{
		List<Supplier> getSupList = session.createQuery("from Supplier where supplierId = "+supplierId+"").getResultList();
		System.out.println(supplierId);
		return getSupList.get(0);
		}
		catch(Exception e)
		{
			return null;
		}
	
		

	}

	public void deleteSupplier(int supplierId)
	{
		Supplier c = new Supplier();
		c.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(c);
		
		

	}
	
}
	
	
	
	
	
	
	
	
	
	
	

