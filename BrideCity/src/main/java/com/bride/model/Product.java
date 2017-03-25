package com.bride.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product 
{
	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private  int productId;
    
	@Expose
	@NotEmpty(message="Product Name can not be empty")
    private String productName;
	
	@Expose
	@NotEmpty(message="Product Description can not be empty")
    private String productDescription;
	
	@Expose
    private int productActualPrice;
	
	@Expose
    private int productDiscount;

	
	@Expose
    private int categoryId;
	
	@Expose
    private int subCategoryId;
	
	@Expose	
    private int supplierId;
	
	@Expose
    private int brandId;
	    
	@Expose
    @ManyToOne
    @JoinColumn(name="categoryId", nullable=false , updatable=false , insertable=false )
    private Category category;
    
	@Expose
    @ManyToOne
    @JoinColumn(name="subCategoryId", nullable=false , updatable=false , insertable=false )
    private SubCategory subCategory;
    
	@Expose
    @ManyToOne
    @JoinColumn(name="supplierId", nullable=false , updatable=false , insertable=false )
    private Supplier supplier;

	@Expose
	@ManyToOne
    @JoinColumn(name="brandId", nullable=false , updatable=false , insertable=false )
    private Brand brand;

    
	
	@Transient
    private List<MultipartFile> productImage;



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



	



	public int getProductActualPrice() {
		return productActualPrice;
	}



	public void setProductActualPrice(int productActualPrice) {
		this.productActualPrice = productActualPrice;
	}



	public int getProductDiscount() {
		return productDiscount;
	}



	public void setProductDiscount(int productDiscount) {
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



	public List<MultipartFile> getProductImage() {
		return productImage;
	}



	public void setProductImage(List<MultipartFile> productImage) {
		this.productImage = productImage;
	} 
	
	
	
	
	
}