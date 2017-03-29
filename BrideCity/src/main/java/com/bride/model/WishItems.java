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
public class WishItems 
{
     
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int wishItemId;
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
	
	@Expose
	private int discount;
	
	@DateTimeFormat(pattern=" yyyy-MM-dd'T'hh:mm:ss.SSSZ")
	private Date dateOrdered;
	
	
	
	
	private int userId;

	@ManyToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	

	public int getWishItemId() {
		return wishItemId;
	}

	public void setWishItemId(int wishItemId) {
		this.wishItemId = wishItemId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
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

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public Date getDateOrdered() {
		return dateOrdered;
	}

	public void setDateOrdered(Date dateOrdered) {
		this.dateOrdered = dateOrdered;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
}
