<%@ include file="header.jsp" %>


<!-- Product Form -->	
 	<div class="text-center">
 		<h1>Product Form</h1>
 	</div>
 	<br>
 	<div class="form">	
		<form:form modelAttribute="product" action="addProduct" enctype="multipart/form-data">
				<form:input type="hidden" path="productId" placeholder="Product Id" /> 
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:label path="productName">Enter the Name of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:input class="form-control" path="productName" placeholder="Product Name" autofocus="true" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productName" cssClass="error" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDescription">Enter the Description for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDescription" placeholder="Product Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productDescription" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productImage">Choose the Image for Product </form:label>
			</div>
			<div class="form-group col-xs-12 col-sm-4 col-md-4">                         
    			<label class="custom-file">
    				<form:input path="productImage" accept=".jpg,.jpeg,.png" type="file" name="file" class="custom-file-input" ></form:input>    				
    				<span class="custom-file-control"></span>
   				</label>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productActualPrice">Enter the Price of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productActualPrice" placeholder="Product Actual Price" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDiscount">Enter the Discount for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDiscount" placeholder="Product Discount" />
			</div>	
		</div>
		
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="categoryId">Select Category of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="subCategoryId">Select SubCategory of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="brandId">Select Brand of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
			</div>
		</div>
		
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="supplierId">Select Supplier of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
			</div>
		</div>
		
		
		<br>
		<div class="row">
			<div class="text-center col-sm-12 col-xs-12 col-md-12">
				<input class="btn btn-success" type="submit" value="Add Product" />
			
			</div>	
		</div>
</form:form>
 	</div>




<!-- Product List -->

 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Product List</h1>
 </div>
 <div class="row">	
 	   <div class="input-group col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search" />
 		
 	   </div>
 </div>
 
 
 
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
<tr>
<th>Name</th>
<th>Description</th>
<th>Actual Price</th>
<th>Discount</th>

<th>Category</th>
<th>SubCategory</th>
<th>Brand</th>
<th>Supplier</th>
<th>Product Image</th>
<th>Update Product</th>
<th>Delete Product</th> 
</tr>
<tr ng-repeat="pList in myscope | filter:search ">
<td>{{pList.productName}}</td>
<td>{{pList.productDescription}}</td>
<td>{{pList.productActualPrice}}</td>
<td>{{pList.productDiscount}}</td>

<td>{{pList.category.categoryName}}</td>
<td>{{pList.subCategory.subCategoryName}}</td>
<td>{{pList.brand.brandName}}</td>
<td>{{pList.supplier.supplierName}}</td>


<td><img src="resources/data/productImage-{{pList.productId}}.jpg" height="100px" width="100px" alt="img not uploaded"/></td>
			

<td><a href="updateProductById-{{pList.productId}}" >Update</a></td>
<td><a href="deleteProductById-{{pList.productId}}" >Delete</a></td>  
</tr>
</table>
</div>
 </div>

</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson}
});
</script>
















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT  PAGE</title>
</head>


<body>
<h1>PRODUCT PAGE</h1>
  
                  <!-- ,,,,,,,,,,,PRODUCT  IMAGE  DISPLAY,,,,, -->

<form:form action="addProduct" modelAttribute="product" enctype="multipart/form-data">


<form:input path="productId" type="hidden"  placeholder="Add product Id" />
<form:input path="productName" placeholder="Add product Name" />
<form:errors path="productName"></form:errors>
<form:input path="productDescription" placeholder="Add product Description" />
<form:errors path="productDescription"></form:errors>
<form:input path="productPrice" placeholder="Add product Price" />
<form:errors path="productPrice"></form:errors>
<form:input path="productDiscount" placeholder="Add product Discount" />
<form:errors path="productDiscount"></form:errors>
 
 
             <!-- ,,,,,,,,,,,PRODUCT  IMAGE  DISPLAY,,,,, -->
           
 
 <form:input type="file" accept=".jpg,.jpeg,.png" path="productImage"/>



<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
<form:select path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
<form:select path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
<form:select path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>

<input type="Submit" value="Add Product">

</form:form>

<br><br>
<table  border= "1">
	
	<tr>
	    <th>Product Id </th>
		<th>Product Name</th>
		<th>Product Description</th>
		<th>Product Price</th>
		<th>Product Discount</th>
		<th>Category</th>
		<th>SubCategory</th>
		<th>Brand</th>
		<th>Supplier</th>
		<th>Product Image</th>
		<th>Product Edit</th>
		<th>Product Delete</th>
	</tr>


	<c:forEach items="${productList}" var="pList">
		<tr>
		    <td>${pList.productId}</td>
			<td>${pList.productName}</td>
			<td>${pList.productDescription}</td>
			<td>${pList.productPrice}</td>
			<td>${pList.productDiscount}</td>
		    <td>${pList.category.categoryName}</td>
			<td>${pList.subCategory.subCategoryName}</td>
			<td>${pList.brand.brandName}</td>
			<td>${pList.supplier.supplierName}</td>
			
			
			      <!-- ,,,,,,,,,,,PRODUCT  IMAGE  DISPLAY,,,,,,,, -->
			      
			<td><img src="resources/data/productImage-${pList.productId}.jpg" height="100px" width="100px" alt="img not uploaded"/></td>
			
           
           
           
           
            <td><a href="updateProductById-${pList.productId}">EDIT</a></td>
			<td><a href="deleteProductById-${pList.productId}">DELETE</a></td> 
		</tr>
	</c:forEach>

</table>
</body>
</html> --%>