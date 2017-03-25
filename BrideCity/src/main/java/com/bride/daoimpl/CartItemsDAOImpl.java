package com.bride.daoimpl;



import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.CartItemsDAO;
import  com.bride.model.CartItems;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class CartItemsDAOImpl implements CartItemsDAO

{
 @Autowired
 SessionFactory   sessionFactory;

	
	
     public void addToCart(CartItems cartItems) 
     {
	   sessionFactory.getCurrentSession().saveOrUpdate(cartItems);
     }

     public String fetchAllItemsByUserIdJSON(int userId)
     {
    	 List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where userId="+userId+" and flag = 'N'").getResultList();
		 Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		 return gson.toJson(cartList);
		
    	 
     }
 	  public CartItems fetchOneItem(int cartItemId)
 	   {
 		 List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItems where cartItemId="+cartItemId).getResultList();
 		  CartItems cartItems = cartList.get(0);
 		  return cartItems;
	
 		
 	   }
 	public void deleteItem(int cartItemId)
 	
 	{
 	
 		CartItems thisCartItem = fetchOneItem(cartItemId);
 		System.out.println(thisCartItem);
		sessionFactory.getCurrentSession().delete(thisCartItem);
 	}
 	
     
}

