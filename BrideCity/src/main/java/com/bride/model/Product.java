package com.bride.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



@Entity
public class Product 
{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
    private  int productId;
	
	private String productName;
	private String productDescription;
	private float  productPrice;
	private float productDiscount;
	
	  
	            /*foreign keys */
	
	
	private int categoryId;
	private int subCategoryId;
	private int supplierId;
	private int brandId;
	
	
	@ManyToOne
	@JoinColumn(name="categoryId", nullable=false , updatable=false , insertable=false )
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="subCategoryId", nullable=false , updatable=false , insertable=false )
	private SubCategory subCategory;
	
	@ManyToOne
	@JoinColumn(name="supplierId", nullable=false , updatable=false , insertable=false )
	private Supplier supplier;
	
	@ManyToOne
	@JoinColumn(name="brandId", nullable=false , updatable=false , insertable=false )
	private Brand brand;

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

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	public float getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(float productDiscount) {
		this.productDiscount = productDiscount;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	
	
	
	
	
}
