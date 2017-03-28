package com.bride.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bride.model.Product;
import com.bride.service.ProductService;
import com.bride.model.SubCategory;
import com.bride.service.BrandService;
import com.bride.service.CategoryService;
import com.bride.service.SubCategoryService;
import com.bride.service.SupplierService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


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
	
	
	private String Data_Folder = "C:\\MyProject\\BrideCity\\src\\main\\webapp\\resources\\data";

	
	@RequestMapping("/productPage")
	public String getProductPage(Model model)
	{   
		

		model.addAttribute("product",new Product());
		model.addAttribute("productList", productService.fetchAllProducts());
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("brandList", brandService.fetchAllBrands());
		model.addAttribute("supList", supplierService.fetchAllSuppliers());
	    
		
		
		model.addAttribute("productListByJson", productService.fetchAllProductsByJSON());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandsByJson());
	
		return "products";
	
	
	}
	
    @RequestMapping("/addProduct")
	public String addProduct(@Valid @ModelAttribute("product") Product  product,@RequestParam("productImage")MultipartFile productImage,BindingResult result,Model model)
	{
		
		
		if(result.hasErrors())
		{
			
			model.addAttribute("categoryList", categoryService.fetchAllCategories());
			model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
			model.addAttribute("brandList", brandService.fetchAllBrands());
			model.addAttribute("supList", supplierService.fetchAllSuppliers());
			
			model.addAttribute("productListByJson", productService.fetchAllProductsByJSON());
			model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
			model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
			model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
			model.addAttribute("brandListByJson", brandService.fetchAllBrandsByJson());
			
			
			
			return "products";
		}
		
	    productService.addProduct(product);
	    
	    if(!productImage.isEmpty()){
			try
			{
				byte[] bytes = productImage.getBytes();
				
				File directory = new File(Data_Folder + File.separator);
						if(!directory.exists())
						{
							directory.mkdirs();
						}
						
						File imageFile = new File(directory.getAbsolutePath() + File.separator + "productImage-" + 

product.getProductId() + ".jpg");
						BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
						stream.write(bytes);
						stream.close();
			}
			catch(Exception e)
			{
				e.printStackTrace();
				model.addAttribute("fmessage","Image Upload Failed.try again");
			}
			  model.addAttribute("filemessage","Image Upload Successful");
		    }
		   else
		   {
			model.addAttribute("filemessage","Image file is required");
		   }
	    
	    
	       return "redirect:/productPage";
	}
	
	

	@RequestMapping("/updateProductById-{productId}")
	public String updateProduct(Model model, @PathVariable("productId") int productId)
	{   
		
		
		model.addAttribute("product", productService.getProductById(productId));
		model.addAttribute("categoryList", categoryService.fetchAllCategories());
		model.addAttribute("productList", productService.fetchAllProducts());
		model.addAttribute("subCategoryList", subCategoryService.fetchAllSubCategories());
		model.addAttribute("brandList", brandService.fetchAllBrands());
		model.addAttribute("supList", supplierService.fetchAllSuppliers());
		
		
		
		
		model.addAttribute("productListByJson", productService.fetchAllProductsByJSON());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandsByJson());
		
		
	    return "products";
	}
	
	
	@RequestMapping("/deleteProductById-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		
		productService.deleteProduct(productId);
		
		try
        {
	    File file = new File(Data_Folder +  File.separator + "productImage-" + productId +".jpg");
	    file.delete();
	    }
	    catch(Exception e)
	     {
	       e.printStackTrace();
	     }
		
		
		return "redirect:/productPage";
	}
	
	@RequestMapping("/viewProductById-{productId}")
	public String viewProduct(Model model,@PathVariable("productId") int productId)
	{
		Product p = productService.getProductById(productId);
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		
		String productData= g.toJson(p);
		
		model.addAttribute("productData", productData);
		
	    model.addAttribute("productListByJson", productService.fetchAllProductsByJSON());
		model.addAttribute("subCategoryListByJson", subCategoryService.fetchAllSubCategoriesByJson());
		model.addAttribute("categoryListByJson", categoryService.fetchAllCategoriesByJson());
		model.addAttribute("supListByJson", supplierService.fetchAllSuppliersByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandsByJson());
	
		return "viewproduct";
	}
	
	                     /////////////////////RRRRRRRR//////////////////////
	
	
	/*@RequestMapping("/productdisplay")
	public String getProductDisplay(Model model) 
	{
		return "main-productdisplay";
	}
	
	
	@RequestMapping("/toggleproduct-{productId}")
	public String toggleDisabled(@PathVariable("productId") int productId)
	{
		productService.toggleProduct(productId);		
		return "redirect:/productPage";
	}*/

}

