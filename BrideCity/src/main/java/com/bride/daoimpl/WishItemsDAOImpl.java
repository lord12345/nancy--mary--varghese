package com.bride.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bride.dao.CartItemsDAO;
import com.bride.dao.WishItemsDAO;
import com.bride.model.CartItems;
import com.bride.model.WishItems;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class WishItemsDAOImpl implements WishItemsDAO

{
 @Autowired
 SessionFactory   sessionFactory;

	
	
     public void addToWish(WishItems wishItems) 
     {
	   sessionFactory.getCurrentSession().saveOrUpdate(wishItems);
     }

     public String fetchAllItemsByUserIdJSON(int userId)
     {
    	 List<WishItems> wishList = sessionFactory.getCurrentSession().createQuery("from WishItems where userId="+userId+"").getResultList();
		 Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		 return gson.toJson(wishList);
		
    	 
     }
 	  public WishItems fetchOneItem(int wishItemId)
 	   {
 		 List<WishItems> wishList = sessionFactory.getCurrentSession().createQuery("from WishItems where wishItemId="+wishItemId).getResultList();
 		  WishItems wishItems = wishList.get(0);
 		  return wishItems;
	
 		
 	   }
 	public void deleteItem(int wishItemId)
 	
 	{
 	
 		WishItems thisWishItem = fetchOneItem(wishItemId);
 		System.out.println(thisWishItem);
		sessionFactory.getCurrentSession().delete(thisWishItem);
 	}
 	
     
}