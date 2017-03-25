package com.bride.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
		model.addAttribute("supList", supplierService.fetchAllSuppliers());
		model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
		return "suppliers";
	}
	
	
	
	@RequestMapping("/addsupplier")
	public String addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier,BindingResult result,Model  model)
	{
		
		if(result.hasErrors())
		{
			model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
			return "suppliers";
		}
		
		supplierService.addSupplier(supplier);
		return "redirect:/supplierPage";
	}
	
	
	
	
	@RequestMapping("/updateSupplierById-{supplierId}")
	public String updateSupplier(Model model, @PathVariable("supplierId") int supplierId)
	{
		
		model.addAttribute("supplier", supplierService.getSupplierById(supplierId));
		model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
		return "suppliers";
	}
	
	
	
	@RequestMapping("/deleteSupplierById-{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId)
	{
		
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplierPage";
	}
	
}
