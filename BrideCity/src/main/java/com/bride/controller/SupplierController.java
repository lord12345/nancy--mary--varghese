package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.Supplier;
import com.bride.service.SupplierService;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierService supplierService;
	

	
	@RequestMapping("/supplierPage")
	public String getSupplierPage(Model model)
	{
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("supplierList", supplierService.fetchAllSuppliers());
		return "suppliers";
	}
	
	
	
	@RequestMapping("/addsupplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
	{
		
		supplierService.addSupplier(supplier);
		return "redirect:/supplierPage";
	}
	
	
	@RequestMapping("/editSupplier-{supplierId}")
	public String getSupplierById(Supplier supplier, @PathVariable("supplierId") int supplierId)
	{
		return "suppliers";
	}
	
	@RequestMapping("/deleteSupplier-{supplierId}")
	public String deleteSupplier(Model model,@PathVariable("supplierId") int supplierId)
	{
		
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplierPage";
	}
	
}
