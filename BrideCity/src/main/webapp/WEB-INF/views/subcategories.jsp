<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUB CATEGORY  PAGE</title>
</head>


<body>

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
</body>
</html>