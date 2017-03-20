 <%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css"/>
<div class="container">
 <div class="text-center">
		<a href="categoryPage" class="btn btn-success" role="button">CATEGORY </a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SUBCATEGORY</a>
		<a href="supplierPage" class="btn btn-success" role="button">SUPPLIER</a>
		<a href="productPage" class="btn btn-info" role="button">PRODUCT</a>		
		<a href="brandPage" class="btn btn-success" role="button">BRAND</a>
	</div>
	





 <div class="text-center">
 		<h1>Brand Form</h1>
 	</div>
      <br>

 	<div class="form">
		<form:form modelAttribute="brand" action="addbrand">
			
			<form:input type="hidden" path="brandId" placeholder="Brand Id" /> 
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="brandName">Enter Brand Name</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="brandName" placeholder="BrandName" autofocus="true" />		
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="brandName" />
			</div>
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="brandDescription">Enter Brand Description</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">		
				<form:input class="form-control" path="brandDescription" placeholder="Brand Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="brandDescription" />
			</div>	
		  </div>
		  
		  
	<div class="row">
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:label path="subCategoryId"> SubCategory of Brand</form:label>
					</div>
					<div class="col-xs-12 col-sm-4 col-md-4">
						<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
					</div>
				</div>	  
		  
      <br>
		 <div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<input class="btn btn-success" type="submit" value="Add Brand" />
				</div>
				
			</div>
		 </div>	
		
		</form:form>
 	
 	</div>

<br><br>
<br>
<hr style="height:2px;border-width:0;color:red;background-color:red">


<div ng-app="myApp">
 <div class="text-center">
 	<h1>Brand List</h1>
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
<th>SubCategory</th>
<th>Update </th>
<th>Delete </th> 
</tr>

<tr ng-repeat="bList in myscope | filter:search">
<td>{{bList.brandName}}</td>
<td>{{bList.brandDescription}}</td>
<td>{{bList.subCategory.subCategoryName}}</td>
<td><a href="updateBrandById-{{bList.brandId}}">Update</a></td>
<td><a href="deleteBrandById-{{bList.brandId}}">Delete</a></td>
</tr>
</table>
</div>
 </div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${brandListByJson}
});
</script>

 