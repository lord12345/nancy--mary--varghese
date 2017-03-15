package com.bride.dao;

import java.util.List;

import com.bride.model.Brand;


public interface BrandDAO 
{
	
	
	
	public void addBrand(Brand brand); 
	
	public List<Brand> fetchAllBrands();
	public String fetchAllBrandsByJson();
	
	public Brand getBrandById(int brandId);

	public void deleteBrand(int brandId);
	

}
