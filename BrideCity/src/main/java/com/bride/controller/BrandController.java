package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bride.model.Brand;
import com.bride.service.BrandService;

@Controller
public class BrandController 
{
	@Autowired
	BrandService brandService;
	

	
	@RequestMapping("/brandPage")
	public String getBrandPage(Model model)
	{
		model.addAttribute("brand",new Brand());
		model.addAttribute("brandList", brandService.fetchAllBrands());
		return "brands";
	}
	
	
	
	@RequestMapping("/addbrand")
	public String addBrand(@ModelAttribute("brand") Brand brand)
	{
		
		brandService.addBrand(brand);
		return "redirect:/brandPage";
	}
	
	
	@RequestMapping("/editBrand-{brandId}")
	public String getBrandById(Brand brand, @PathVariable("brandId") int brandId)
	{
		return "brands";
	}
	
	@RequestMapping("/deleteBrand-{brandId}")
	public String deleteBrand(Model model,@PathVariable("brandId") int brandId)
	{
		
		brandService.deleteBrand(brandId);
		return "redirect:/brandPage";
	}
	
}
