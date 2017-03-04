package com.bride.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



import com.bride.model.Product;
import com.bride.service.ProductService;
import com.bride.model.SubCategory;
import com.bride.service.BrandService;
import com.bride.service.CategoryService;
import com.bride.service.SubCategoryService;
import com.bride.service.SupplierService;


@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	BrandService brandService;
	
	@Autowired
	SupplierService supplierService;
	
	
  
	
	@RequestMapping("/productPage")
	public String getProductPage(Model model)
	{   
		

		model.addAttribute("product",new Product());
		model.addAttribute("productList", productService.fetchAllProducts());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("brandList", brandService.fetchAllBrands());
		model.addAttribute("supplierList", supplierService.fetchAllSuppliers());
	    return "products";
	
	
	}
	
	
	
	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute("product") Product  product)
	{
		
	    productService.addProduct(product);
	    return "redirect:/productPage";
	}
	
	

	@RequestMapping("/editProduct-{productId}")
	public String getProductById(Model model,Product product, @PathVariable("productId") int productId)
	{   
		
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		/*model.addAttribute("productList", productService.fetchAllProducts());*/
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("brandList", brandService.fetchAllBrands());
		model.addAttribute("supplierList", supplierService.fetchAllSuppliers());
		return "products";
	}
	
	
	
	
	@RequestMapping("/deleteProduct-{productId}")
	public String deleteProduct(Model model,@PathVariable("productId") int productId)
	{
		
		productService.deleteProduct(productId);
		return "redirect:/productPage";
	}
	
	
	
}





