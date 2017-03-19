package com.bride.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Supplier

{

	@Id	
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private  int   supplierId;
	
	@NotEmpty(message ="supplierName   is  required")
	private  String  supplierName;
	
	@NotEmpty(message ="supplierDescription  is required")
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
