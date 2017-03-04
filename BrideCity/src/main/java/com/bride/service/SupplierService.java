package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.SupplierDAOImpl;
import com.bride.model.Supplier;

@Service
@Transactional
public class SupplierService {
	@Autowired
	
	SupplierDAOImpl supplierDAOImpl;
	
	public void addSupplier(Supplier supplier) 
	
	{
		supplierDAOImpl.addSupplier(supplier);
	}

	public List<Supplier> fetchAllSuppliers()
	{
			return supplierDAOImpl.fetchAllSuppliers();
		
	}
	
	public Supplier getSupplierById(int supplierId) 
	{
		return supplierDAOImpl.getSupplierById(supplierId);
	}

	public void deleteSupplier(int supplierId) 
	{
		supplierDAOImpl.deleteSupplier(supplierId);
	}

	
	
}
