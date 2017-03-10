package com.bride.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String addBrand(@Valid @ModelAttribute("brand") Brand brand,BindingResult result)
	{
		
		if(result.hasErrors())
		{
		
			
			return  "brands";
			
		}
		brandService.addBrand(brand); 
		return "redirect:/brandPage";
	}
	
	
	@RequestMapping("/updateBrandById-{brandId}")
	public String updateBrand(Model model , @PathVariable("brandId") int brandId)
	{
		
		model.addAttribute("brand", brandService.getBrandById(brandId));
		return "brands";
	
	}
	
	@RequestMapping("/deleteBrandById-{brandId}")
	public String deleteBrand(@PathVariable("brandId") int brandId)
	{
		
		brandService.deleteBrand(brandId);
		return "redirect:/brandPage";
	}
	
}
