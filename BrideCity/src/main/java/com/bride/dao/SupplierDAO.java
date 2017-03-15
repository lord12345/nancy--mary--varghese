package com.bride.dao;

import java.util.List;

import com.bride.model.Supplier;


public interface SupplierDAO 
{
	
	
	
	public void addSupplier(Supplier supplier); 
	
	public List<Supplier> fetchAllSuppliers();
	
	public String fetchAllSuppliersByJson();
	public Supplier getSupplierById(int supplierId);

	public void deleteSupplier(int supplierId);
	

}
