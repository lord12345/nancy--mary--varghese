package com.bride.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Supplier

{

	@Id	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private  int   supplierId;
	
	@NotEmpty(message ="supplierName   is  required")
	@Expose
	private  String  supplierName;
	
	@NotEmpty(message ="supplierDescription  is required")
	@Expose
	private   String   supplierDescription;
	
	
	
	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() 
	{
		return supplierName;
	}

	public void setSupplierName(String supplierName) 
	{
		this.supplierName = supplierName;
	}

	public String getSupplierDescription()
	{
		return supplierDescription;
	}

	public void setSupplierDescription(String supplierDescription)
	{
		this.supplierDescription = supplierDescription;
	}

	
	
	
}
