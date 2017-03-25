package com.bride.dao;

import java.util.List;

import com.bride.model.CartItems;

public interface CartItemsDAO 

{

	public  void  addToCart(CartItems cartItems);
	public String fetchAllItemsByUserIdJSON(int userId);
	public CartItems fetchOneItem(int cartItemId); 
	public void deleteItem(int cartItemId);
	
	
}
