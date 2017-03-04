package com.bride.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.bride.dao.ProductDAO;
import com.bride.model.Product;




@Repository
public class ProductDAOImpl  implements  ProductDAO

{
private    Session  session ;
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}
	
	public List<Product> fetchAllProducts()
	{
		 List<Product> getProductList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return getProductList;

    }

	@SuppressWarnings("unchecked")
	public Product getProductById(int productId)
	{
		try{
			List<Product> getProductList = session.createQuery("from Product where productId = "+productId+"").getResultList();
			System.out.println(productId);
			return getProductList.get(0);
			}
			catch(Exception e)
			{
				return null;
			}
		
	}

	public void deleteProduct(int productId)
	{
	
		Product c = new Product();
		c.setProductId(productId);
		sessionFactory.getCurrentSession().delete(c);
		
		
			
	}
}
