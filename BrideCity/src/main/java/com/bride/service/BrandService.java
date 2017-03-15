package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.BrandDAOImpl;
import com.bride.model.Brand;

@Service
@Transactional
public class BrandService {
	@Autowired
	
	BrandDAOImpl brandDAOImpl;
	
	public void addBrand(Brand brand) 
	
	{
		brandDAOImpl.addBrand(brand);
	}

	public List<Brand> fetchAllBrands()
	{
			return brandDAOImpl.fetchAllBrands();
		
	}
	
	public String fetchAllBrandsByJson()
	{
		return brandDAOImpl.fetchAllBrandsByJson();
	}
	
	
	public Brand getBrandById(int brandId) 
	{
		return brandDAOImpl.getBrandById(brandId);
	}

	public void deleteBrand(int brandId) 
	{
		brandDAOImpl.deleteBrand(brandId);
	}

	
	
}
