<%@ include file="header.jsp" %>


<div class="text-center">
 		<h1>SubCategory Form</h1>
</div>
 	
 	
 	
 	<br>
 	
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
<tr ng-repeat="sList in myscope | filter:search">
<td>{{sList.subCategoryName}}</td>
<td>{{sList.subCategoryDescription}}</td>
<td>{{sList.category.categoryName}}</td>
<td><a href="updateSubCategoryById-{{sList.subCategoryId}}">Update</a></td>
<td><a href="deleteSubCategoryById-{{sList.subCategoryId}}">Delete</a></td>
</tr>
</table>
 </div>
</div>


<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${subCategoryListByJson}
});
</script>


























<%-- <h1>SUB   CATEGORY PAGE</h1>
<form:form modelAttribute="subCategory" action="addSubCategory">

<form:input path="subCategoryId" type="hidden" placeholder="Add subcategoryId"/>
<form:input path="subCategoryName" placeholder="Add subcategory Name" />

<form:errors path="subCategoryName"></form:errors>
<form:input path="subCategoryDescription" placeholder="Add subcategory Description" />
<form:errors path="subCategoryDescription"></form:errors>

 <form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName"/>

<input type="Submit" value="Add SubCategory">

</form:form>

<br><br>
<table  border= "1">
	
	<tr>
	    <th>SubCategory Id </th>
		<th>SubCategory Name</th>
		<th>SubCategory Description</th>
		<th>Category</th>
		<th>SubCategory Edit</th>
		<th>SubCategory Delete</th>
	</tr>


	<c:forEach items="${subCategoryList}" var="sList">
		<tr>
		    <td>${sList.subCategoryId}</td>
			<td>${sList.subCategoryName}</td>
			<td>${sList.subCategoryDescription}</td>
			<td>${sList.category.categoryName}</td>
			
            <td><a href="updateSubCategoryById-${sList.subCategoryId}">EDIT</a></td>
			<td><a href="deleteSubCategoryById-${sList.subCategoryId}">DELETE</a></td> 
		</tr>
	</c:forEach>

</table>



<div ng-app="myApp">
<input  type="text" ng-model="search" placeholder="search" />
<br>
 <table class="table" ng-controller="myController">
<tr>
<th>subCategoryId</th>
<th>subCategoryName</th>
<th>subCategoryDescription</th>
<th>Category</th>
<th>Edit</th>
<th>Delete </th> 
</tr>
<tr ng-repeat="slist in myscope | filter:search">
<td>{{slist.subCategoryId}}</td>
<td>{{slist.subCategoryName}}</td>
<td>{{slist.subCategoryDescription}}</td>
<td>${slist.category.categoryName}</td>
<td><a href="updateSubCategoryById-{{slist.SubCategoryId}}">Edit</a></td>
<td><a href="deleteSubCategoryById-{{slist.SubCategoryId}}">Delete</a></td>
</tr>
</table>
</div>



  
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js" /></script>
<script type="text/javascript" src="resources/js/angular.min.js"/></script>
 
 <script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${subCategoryListByJson}

});
</script>


 --%>