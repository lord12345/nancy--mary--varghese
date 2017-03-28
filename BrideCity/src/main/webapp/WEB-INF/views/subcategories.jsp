<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/error.css"/>
<link rel="stylesheet" href="resources/css/button.css"/>
<div class="container"> 
	<div class="text-center">
		<a href="categoryPage" class="btn btn-success" role="button">CATEGORY </a>
		<a href="subCategoryPage" class="btn btn-info" role="button">SUBCATEGORY </a>
		<a href="productPage" class="btn btn-success" role="button">PRODUCT</a>
		<a href="supplierPage" class="btn btn-info" role="button">SUPPLIER </a>
		<a href="brandPage" class="btn btn-success" role="button">BRAND</a>
	</div>

<div class="text-center">
 		<h1>SubCategory Form</h1>
</div>
 	
 	
 <div class="form">
		
		<form:form modelAttribute="subCategory" action="addSubCategory">
			
			<form:input type="hidden" path="subCategoryId" placeholder="SubCategory Id" />
			
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryName">Enter SubCategory Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryName" placeholder="SubCategory Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryName" cssClass="error"/>
				</div>
			</div>
			
			
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:label path="subCategoryDescription">Enter Description of SubCategory</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4"> 
					<form:input class="form-control" path="subCategoryDescription" placeholder="SubCategory Description" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">	
					<form:errors path="subCategoryDescription" cssClass="error"/>
				</div>
			</div>
			
			
			
			<br>
				<div class="row">
					<div class="col-xs-12 col-sm-4  col-md-4"> 
						<form:label path="categoryId">Select Category </form:label>
					</div>	 
					<div class="col-xs-12 col-sm-4  col-md-4">					
						<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>
					</div>
				</div>		
			
			
			<br>
		        <div class="row">
			         <div class="text-center col-xs-12 col-sm-12  col-md-12">
				     <input class="btn btn-success" type="submit" value="Add SubCategory" />
				
			         </div>	
		        </div>
	</form:form>
 	</div>
 

<br>
<hr style="height:2px;border-width:0;color:red;background-color:red">



 <div ng-app="myApp">
       <div class="text-center">
 	           <h1>SubCategory List</h1>
       </div>
 
 
 <div class="row">
 	          <div class="col-xs-12 col-md-4 col-sm-4">
 		           <input class="form-control" type="text" ng-model="search" placeholder="search" />
 	         </div>
 </div>
 
 
 <br>
 
 <div class="table-responsive">
<table class="table" ng-controller="myController">
<tr>
<th>SubCategory Name</th>
<th>SubCategory Description</th>
<th>Category</th>
<th>Update SubCategory</th>
<th>Delete SubCategory</th> 
</tr>
<tr ng-repeat="sList in myscope | filter:search |orderBy:orderkeyword : orderflag ">
<td>{{sList.subCategoryName}}</td>
<td>{{sList.subCategoryDescription}}</td>
<td>{{sList.category.categoryName}}</td>
<td><a href="updateSubCategoryById-{{sList.subCategoryId}}" class="button button1">Update</a></td>
<td><a href="deleteSubCategoryById-{{sList.subCategoryId}}" class="button button2">Delete</a></td>
</tr>
</table>
 </div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${subCategoryListByJson}
});
</script>
<%@ include file="footer.jsp" %>



