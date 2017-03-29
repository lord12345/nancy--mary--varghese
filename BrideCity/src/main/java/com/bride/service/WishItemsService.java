package com.bride.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.WishItemsDAOImpl;
import com.bride.model.WishItems;

@Service
@Transactional
public class WishItemsService
{
	@Autowired
	WishItemsDAOImpl  wishItemsDAOImpl;



	public  void  addToWish(WishItems wishItems)

	{
	wishItemsDAOImpl.addToWish(wishItems);
	}

	
	public String fetchAllItemsByUserIdJSON(int userId)
	{
		
	return  wishItemsDAOImpl.fetchAllItemsByUserIdJSON(userId);
	}
	
	
	public WishItems fetchOneItem(int wishItemId)
	{
		
	return   wishItemsDAOImpl.fetchOneItem(wishItemId);
	}
	
	public void deleteItem(int wishItemId)
	{

		wishItemsDAOImpl.deleteItem(wishItemId);
	}
}
