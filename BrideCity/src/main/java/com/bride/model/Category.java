package com.bride.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Category 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int categoryId;
	
	@NotEmpty(message="categoryName is required")
	private String categoryName;
	
	@NotEmpty(message="categoryDescription  is   required")
	private String categoryDescription;
	
	
	
	
	             /*.....one  to  many  from  category  to   subcategory.....*/	
	
	/*@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	private Set<SubCategory> subCategory;
	
	
	public Set<SubCategory> getSubCategory() 
	{
		return subCategory;
	}
	public void setSubCategory(Set<SubCategory> subCategory) 
	{
		this.subCategory = subCategory;
	}
	*/
	
	             /*   ..END.....*/
	
	
	
	public int getCategoryId()
	{
		return categoryId;
	}
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}

	public String getCategoryName() 
	{
		return categoryName;
	}
	public void setCategoryName(String categoryName) 
	{
		this.categoryName = categoryName;
	}
	public String getCategoryDescription()
	{
		return categoryDescription;
	}
	public void setCategoryDescription(String categoryDescription) 
	{
		this.categoryDescription = categoryDescription;
	}

}
