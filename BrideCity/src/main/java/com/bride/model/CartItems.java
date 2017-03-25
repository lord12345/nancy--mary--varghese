package com.bride.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

import com.google.gson.annotations.Expose;

@Entity
public class CartItems 

{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	@Expose
	private int cartItemId;
	@Expose
	private  int  productId;
	@Expose
	private String productName;
	@Expose
	private int quantity;
	@Expose
	private int rate;
	@Expose
	private double amount;
	
	
	@DateTimeFormat(pattern=" yyyy-MM-dd'T'hh:mm:ss.SSSZ")
	private Date dateOrdered;
	private String flag;
	
	
	
	private int cartId;
	private int userId;

	@ManyToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	@ManyToOne
	@JoinColumn(name="cartId", nullable=false , updatable=false , insertable=false )
	private Cart cart;

	

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Date getDateOrdered() {
		return dateOrdered;
	}

	public void setDateOrdered(Date dateOrdered) {
		this.dateOrdered = dateOrdered;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	

}
