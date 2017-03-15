<%@ include file="header.jsp" %>


<h1>CATEGORY   PAGE</h1>
  <form:form modelAttribute="category" action="addcategory">

<form:input  type="hidden" path="categoryId"  placeholder="Add category Id" />
<form:input  class="form-control"   path="categoryName" placeholder="Add category Name" />
<form:errors path="categoryName"></form:errors>

<form:input    class="form-control"  path="categoryDescription" placeholder="Add category Description" />
<form:errors path="categoryDescription"></form:errors>

<input type="Submit" value="Add Category">
 

</form:form> 

<br><br>
 <%-- <table  border= "1">
	<tr>
	   
	    <th>Category Id</th>
		<th>Category Name</th>
		<th>Category Description</th>
		<th>Category Edit</th>
		<th>Category Delete</th>
	</tr>


	<c:forEach items="${categoryList}" var="cList">
		<tr>
		
		    <td>${cList.categoryId}</td>
			<td>${cList.categoryName}</td>
			<td>${cList.categoryDescription}</td>
			<td><a href="updateCategoryById-${cList.categoryId}">EDIT</a></td>
			<td><a href="deleteCategoryById-${cList.categoryId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>
 
  --%>
   
<div ng-app="myApp">
<input  type="text" ng-model="search" placeholder="search" />
<br>
 <table class="table" ng-controller="myController">
<tr>
<th>CategoryId</th>
<th>CategoryName</th>
<th>CategoryDescription</th>
<th>Update </th>
<th>Delete </th> 
</tr>
<tr ng-repeat="clist in myscope | filter:search">
<td>{{clist.categoryId}}</td>
<td>{{clist.categoryName}}</td>
<td>{{clist.categoryDescription}}</td>
<td><a href="updateCategoryById-{{clist.categoryId}}">Edit</a></td>
<td><a href="deleteCategoryById-{{clist.categoryId}}">Delete</a></td>
</tr>
</table>
</div>

 <script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${categoryListByJson}
});
</script>
