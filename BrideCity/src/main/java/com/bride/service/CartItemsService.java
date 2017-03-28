package com.bride.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bride.daoimpl.CartItemsDAOImpl;
import com.bride.model.CartItems;


@Service
@Transactional
public class CartItemsService 
{

@Autowired
CartItemsDAOImpl  cartItemsDAOImpl;



public  void  addToCart(CartItems cartItems)

{
cartItemsDAOImpl.addToCart(cartItems);
}

public String fetchAllItemsByUserIdJSON(int userId)
{
	
return  cartItemsDAOImpl.fetchAllItemsByUserIdJSON(userId);
}
public CartItems fetchOneItem(int cartItemId)
{
	
return   cartItemsDAOImpl.fetchOneItem(cartItemId);
}
public void deleteItem(int cartItemId)
{

	cartItemsDAOImpl.deleteItem(cartItemId);
}


}
