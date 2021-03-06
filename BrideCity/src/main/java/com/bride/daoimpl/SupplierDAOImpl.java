package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.SupplierDAO;
import com.bride.model.Brand;
import com.bride.model.Supplier;
import com.google.gson.Gson;
@Repository


public class SupplierDAOImpl implements SupplierDAO
{
	
	
	@Autowired
	SessionFactory sessionFactory;                                                                                                                                                                                                                           

	public void addSupplier(Supplier supplier) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}
	
	public List<Supplier> fetchAllSuppliers()
	{
		 List<Supplier> supList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return supList;

    }

	
	public String fetchAllSuppliersByJson() {
		List<Supplier> supList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		Gson g = new Gson();
		String list = g.toJson(supList);
		return list;
	}
	
	
	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierId) 
	{
	
		List<Supplier> getList = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId = "+supplierId).getResultList();
		return getList.get(0);

	}

	public void deleteSupplier(int supplierId)
	{
		
		sessionFactory.getCurrentSession().delete(getSupplierById(supplierId));
		

	}
	
}
	
	