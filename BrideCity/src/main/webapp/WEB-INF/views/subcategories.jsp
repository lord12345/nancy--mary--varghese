<%@ include file="header.jsp" %>

<h1>SUB   CATEGORY PAGE</h1>
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
<%-- <table  border= "1">
	
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

</table> --%>



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


