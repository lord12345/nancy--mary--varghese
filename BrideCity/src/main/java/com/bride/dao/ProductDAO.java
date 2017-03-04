package com.bride.dao;

import java.util.List;

import com.bride.model.Product;

public interface ProductDAO 


{
	

	public void addProduct(Product product); 
	
	public List<Product> fetchAllProducts();
	
	
	public Product getProductById(int productId);

	public void deleteProduct(int  productId);
	

}
