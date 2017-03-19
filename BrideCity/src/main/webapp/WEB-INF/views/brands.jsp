 <%@ include file="header.jsp" %>

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
<%-- <table  border= "1">
	<tr>
	    <th>Brand Id</th>
		<th>Brand Name</th>
		<th>Brand Description</th>
		<th>Brand Edit</th>
		<th>Brand Delete</th>
	</tr>


	<c:forEach items="${brandList}" var="bList">
		<tr>
		
		    <td>${bList.brandId}</td>
			<td>${bList.brandName}</td>
			<td>${bList.brandDescription}</td>
			<td><a href="updateBrandById-${bList.brandId}">EDIT</a></td>
			<td><a href="deleteBrandById-${bList.brandId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>



 --%>
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


<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${brandListByJson}
});
</script>

 