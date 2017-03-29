package com.bride.dao;

import com.bride.model.CartItems;
import com.bride.model.WishItems;

public interface WishItemsDAO 
{
	
	public  void  addToWish(WishItems wishItems);
	public String fetchAllItemsByUserIdJSON(int userId);
	public WishItems fetchOneItem(int wishItemId); 
	public void deleteItem(int wishItemId);
}
