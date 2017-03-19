<%@ include file="header.jsp" %>

    <div class="text-center">
 		<h1>Category Form</h1>
 	</div>
      <br>

 	<div class="form">
		<form:form modelAttribute="category" action="addcategory">
			
			<form:input type="hidden" path="categoryId" placeholder="Category Id" /> 
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryName">Enter Category Name</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="categoryName" placeholder="Category Name" autofocus="true" />		
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryName" />
			</div>
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryDescription">Enter Category Description</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">		
				<form:input class="form-control" path="categoryDescription" placeholder="Category Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryDescription" />
			</div>	
		  </div>
		  <br>
		 <div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<input class="btn btn-success" type="submit" value="Add Category" />
				</div>
				
			</div>
		  </div>	
		</form:form>
 	</div>


<div ng-app="myApp">
 <div class="text-center">
 	<h1>Category List</h1>
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
<th>CategoryId</th>
<th>CategoryName</th>
<th>CategoryDescription</th>
<th>Update Category</th>
<th>Delete Category</th> 
</tr>
<tr ng-repeat="clist in myscope | filter:search">
<td>{{clist.categoryId}}</td>
<td>{{clist.categoryName}}</td>
<td>{{clist.categoryDescription}}</td>
<td><a href="updateCategoryById-{{clist.categoryId}}">Update</a></td>
<td><a href="deleteCategoryById-{{clist.categoryId}}">Delete</a></td>
</tr>
</table>
</div>
 </div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${categoryListByJson}
});
</script> 




  