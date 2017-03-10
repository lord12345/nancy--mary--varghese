<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CATEGORY  PAGE</title>
</head>
<body>

<form:form modelAttribute="category" action="addcategory">

<form:input  type="hidden" path="categoryId"  placeholder="Add category Id" />
<form:input path="categoryName" placeholder="Add category Name" />
<form:errors path="categoryName"></form:errors>

<form:input path="categoryDescription" placeholder="Add category Description" />
<form:errors path="categoryDescription"></form:errors>

<input type="Submit" value="Add Category">


<h1>CATEGORY   PAGE</h1>
</form:form>
<br><br>
<table  border= "1">
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

</body>
</html>