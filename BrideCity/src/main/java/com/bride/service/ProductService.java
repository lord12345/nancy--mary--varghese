package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.ProductDAOImpl;
import com.bride.model.Product;

@Service
@Transactional
public class ProductService {
	@Autowired
	
	ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product) 
	
	{
		productDAOImpl.addProduct(product);
	}

	public List<Product> fetchAllProducts()
	{
			return productDAOImpl.fetchAllProducts();
		
	}
	
	public String fetchAllProductsByJSON()
	{
		return productDAOImpl.fetchAllProductsByJSON();
	}
	
	
	public Product getProductById(int productId) 
	{
		return productDAOImpl.getProductById(productId);
	}

	public void deleteProduct(int productId) 
	{
		productDAOImpl.deleteProduct(productId);
	}
		
}
