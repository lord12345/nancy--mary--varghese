<%@ include file="header.jsp" %>

<div class="text-center">
	 <h1>Supplier Form</h1>
 </div>
 
 <br>	 
 <div class="form">
<form:form modelAttribute="supplier" action="addsupplier">
		
		<form:input type="hidden" path="supplierId" placeholder="Supplier Id" /> 
	
	
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierName">Enter SupplierName</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:input class="form-control" path="supplierName" placeholder="Supplier Name" autofocus="true"/>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">		
			<form:errors path="supplierName" cssClass="error" />
		</div>	
	</div>
	
	
	<br>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:label path="supplierDescription">Enter  SupplierDescription</form:label>
		</div>
		<div class="col-xs-12 col-sm-4 col-md-4">
			<form:input class="form-control" path="supplierDescription" placeholder="Supplier Description" />
		</div>	
		<div class="col-xs-12 col-sm-4 col-md-4">	
			<form:errors path="supplierDescription" cssClass="error" />
		</div>	
	</div>
    
   
	<br>
	<div class="row">
		<div class="text-center col-xs-12 col-sm-12 col-md-12">
			<input class="btn btn-success" type="submit" value="Add Supplier" />
			
		</div>
	</div>


</form:form>
 </div>
 
  <div ng-app="myApp">
 <div class="text-center">
 	<h1>Supplier List</h1>
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
<th>Id</th>
<th>Name</th>
<th>Description</th>
<th>Update Brand</th>
<th>Delete Brand</th> 
</tr>
<tr ng-repeat="uList in myscope | filter:search">
<td>{{uList.supplierId}}</td>
<td>{{uList.supplierName}}</td>
<td>{{uList.supplierDescription}}</td>

<td><a href="updateSupplierById-{{uList.supplierId}}">Update</a></td>
<td><a href="deleteSupplierById-{{uList.supplierId}}">Delete</a></td>
</tr>
</table>
 </div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${SupListByJson}
});
</script>
 
 
 
 
 
 
 