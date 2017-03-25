package com.bride.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.CartItems;
import com.bride.model.Product;
import com.bride.service.CartItemsService;
import com.bride.service.ProductService;
import com.bride.service.UserService;

@Controller
public class CartItemsController 

{

	@Autowired
	private CartItemsService  cartItemsService;
	
	@Autowired
	private  UserService  userService;
	
	
	@Autowired
	private ProductService  productService;
	
	
	@RequestMapping("/usercart")
	public String getCart(Principal l,Model model)
	
	{
		
		int userId = userService.getUserByusername(l.getName()).getUserId();		
		model.addAttribute("cartItemsListJSON", cartItemsService.fetchAllItemsByUserIdJSON(userId));
        return "usercart";                    
	}
	
	
	
	
	
	@RequestMapping("/addtocart-{productId}")
	public String addToCart(@PathVariable("productId") int productId , Principal l, @ModelAttribute("cartItems") CartItems cartItems)
	{
		String username = l.getName();
		int userId = userService.getUserByusername(username).getUserId();

		cartItems.setUserId(userId);
		cartItems.setCartId(userId);

		String pName = productService.getProductById(productId).getProductName();
		int price = productService.getProductById(productId).getProductActualPrice();

		cartItems.setProductName(pName);
		cartItems.setRate(price);
		cartItems.setQuantity(1);
		cartItems.setAmount(cartItems.getQuantity() * cartItems.getRate());

		Date d = new Date();
		cartItems.setDateOrdered(d);
		
		
		cartItems.setFlag("N");

		cartItemsService.addToCart(cartItems);

		return "redirect:/usercart";                        
	}
   	
	
	
	
	
	
	@RequestMapping("/removefromcart-{cartItemId}")
	public String deleteFromCart(@PathVariable("cartItemId")int cartItemId,Principal l, Model model)
	{
		if(l!=null)
		{
			cartItemsService.deleteItem(cartItemId);
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/usercart";
		}
		else
		{
			model.addAttribute("commonmessage", "You Must Login First!");
			return "redirect:/login";
		}
	}
	
	
	
	
	
	@RequestMapping("/checkoutfromcart-{cartItemId}")
	public String checkoutFromCart(@PathVariable("cartItemId")int cartItemId,Principal l, Model model)
	{
		if(l!=null)
		{
			CartItems thisItem = cartItemsService.fetchOneItem(cartItemId);
			
			if(thisItem.getFlag().equals("N"))
			{
			Product product = productService.getProductById(thisItem.getProductId());
			
			
			productService.addProduct(product);
			
			thisItem.setFlag("Y");
			cartItemsService.addToCart(thisItem);
			
			model.addAttribute("commonmessage", "Removed From Cart");
			return "redirect:/usercart";
			}
			
			model.addAttribute("commonmessage", "Operation Interrupted");
			return "redirect:/usercart";
		}
		else
		{
			model.addAttribute("commonmessage", "You Must Login First!");
			return "redirect:/login";
		}
	
	
	
}
}
