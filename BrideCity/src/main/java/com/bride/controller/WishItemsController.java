package com.bride.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.WishItems;
import com.bride.service.ProductService;
import com.bride.service.UserService;
import com.bride.service.WishItemsService;

@Controller
public class WishItemsController
{

	@Autowired
	private WishItemsService  wishItemsService;
	
	@Autowired
	private  UserService  userService;
	
	
	@Autowired
	private ProductService  productService;
	
	
	@RequestMapping("/wishlist")
	public String getWish(Principal l,Model model)
	
	{
		
		int userId = userService.getUserByusername(l.getName()).getUserId();		
		model.addAttribute("wishItemsListJSON", wishItemsService.fetchAllItemsByUserIdJSON(userId));
        return "wishlist";                    
	}
	
	
	
	
	
	@RequestMapping("/addtowish-{productId}")
	public String addToWish(@PathVariable("productId") int productId , Principal l, @ModelAttribute("wishItems") WishItems wishItems)
	{
		String username = l.getName();
		int userId = userService.getUserByusername(username).getUserId();

		wishItems.setUserId(userId);
		

	    String pName = productService.getProductById(productId).getProductName();
		int price = productService.getProductById(productId).getProductActualPrice();
        int discount = productService.getProductById(productId).getProductDiscount();
		
        
        
        wishItems.setProductName(pName);
		wishItems.setRate(price);
		wishItems.setQuantity(1);
		wishItems.setDiscount(discount);
		wishItems.setAmount(wishItems.getQuantity() * wishItems.getRate());

		Date d = new Date();
		wishItems.setDateOrdered(d);
		
		
		

		wishItemsService.addToWish(wishItems);

		return "redirect:/wishlist";                        
	}
   	

	@RequestMapping("/removefromwish-{wishItemId}")
	public String deleteFromWish(@PathVariable("wishItemId")int wishItemId,Principal l, Model model)
	{
		if(l!=null)
		{
			wishItemsService.deleteItem(wishItemId);
			model.addAttribute("commonmessage", "Removed From Wish");
			return "redirect:/wishlist";
		}
		else
		{
			model.addAttribute("commonmessage", "You Must Login First!");
			return "redirect:/login";
		}
	}
	
	
}

