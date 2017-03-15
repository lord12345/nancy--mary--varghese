<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />



<title>BRAND  Page</title>
</head>
<body>
<h1>Brand  Page</h1>
<form:form modelAttribute="brand" action="addbrand">

<form:input path="brandId" type="hidden" placeholder="Add brand Id" />
<form:input path="brandName" placeholder="Add brand Name" />
<form:errors path="brandName"></form:errors>

<form:input path="brandDescription" placeholder="Add brand Description" />
<form:errors path="brandDescription"></form:errors>


<input type="Submit" value="Add Brand">



</form:form>
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
<input  type="text" ng-model="search" placeholder="search" />
<br>
 <table class="table" ng-controller="myController">
<tr>
<th>BrandId</th>
<th>BrandName</th>
<th>BrandDescription</th>
<th>Update </th>
<th>Delete </th> 
</tr>
<tr ng-repeat="blist in myscope | filter:search">
<td>{{blist.brandId}}</td>
<td>{{blist.brandName}}</td>
<td>{{blist.brandDescription}}</td>
<td><a href="updateCategoryById-{{blist.brandId}}">Edit</a></td>
<td><a href="deleteCategoryById-{{blist.brandId}}">Delete</a></td>
</tr>
</table>
</div>



  
<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js" /></script>
<script type="text/javascript" src="resources/js/angular.min.js"/></script>
 
 <script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${brandListByJson}
});
</script>


</body>
</html>