package com.bride.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;



@Entity
public class Brand 

{
	
@Expose
@Id	
@GeneratedValue(strategy=GenerationType.IDENTITY)
private  int   brandId;


@Expose
@NotEmpty(message="brandName is required")
private  String  brandName;


@Expose
@NotEmpty(message="brandDescription  is   required")
private   String   brandDescription;

@Expose
private int subCategoryId;

@Expose
@ManyToOne
@JoinColumn(name="SubCategoryId",nullable=false , insertable=false, updatable=false)
private SubCategory subCategory;


public int getSubCategoryId()
{
	return subCategoryId;
}
public void setSubCategoryId(int subCategoryId)
{
	this.subCategoryId = subCategoryId;
}
public SubCategory getSubCategory() 
{
	return subCategory;
}
public void setSubCategory(SubCategory subCategory) 
{
	this.subCategory = subCategory;
}
public int getBrandId()
{
	return brandId;
}
public void setBrandId(int brandId) 
{
	this.brandId = brandId;
}
public String getBrandName()
{
	return brandName;
}
public void setBrandName(String brandName) 
{
	this.brandName = brandName;
}
public String getBrandDescription() 
{
	return brandDescription;
}
public void setBrandDescription(String brandDescription)
{
	this.brandDescription = brandDescription;
}

}
