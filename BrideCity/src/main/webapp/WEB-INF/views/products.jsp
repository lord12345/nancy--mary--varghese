<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css"/>
<link rel="stylesheet" href="resources/css/error.css"/>
<div class="container">
 <div class="text-center">
		<a href="categoryPage" class="btn btn-success" role="button">CATEGORY </a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SUBCATEGORY</a>
		<a href="supplierPage" class="btn btn-success" role="button">SUPPLIER</a>
		<a href="productPage" class="btn btn-info" role="button">PRODUCT</a>		
		<a href="brandPage" class="btn btn-success" role="button">BRAND</a>
	</div>
	


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
				<form:select class="form-control" path="supplierId" items="${supList}" itemValue="supplierId" itemLabel="supplierName"/>
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

<br>
<hr style="height:2px;border-width:0;color:red;background-color:red">



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
<th>ProductImage</th>
<th>Update</th>
<th>Delete</th> 
<th>View</th>
</tr>
<tr ng-repeat="pList in myscope | filter:search |orderBy:orderkeyword : orderflag ">

<td>{{pList.productName}}</td>
<td>{{pList.productDescription}}</td>
<td>{{pList.productActualPrice}}</td>
<td>{{pList.productDiscount}}</td>
<td>{{pList.category.categoryName}}</td>
<td>{{pList.subCategory.subCategoryName}}</td>
<td>{{pList.brand.brandName}}</td>
<td>{{pList.supplier.supplierName}}</td>


<td><img src="resources/data/productImage-{{pList.productId}}.jpg" height="100px" width="100px" alt="img not uploaded"/></td>
			

<td><a href="updateProductById-{{pList.productId}}"class="button button1">U</a></td>
<td><a href="deleteProductById-{{pList.productId}}"class="button button2">D</a></td>  
<td><a href="viewProductById-{{pList.productId}}"class="button button3">V</a></td>  
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


<%@ include file="footer.jsp" %>


