<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
</html>