<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    
    
    
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
</head>


<body>

<form:form modelAttribute="supplier" action="addsupplier">

<form:input path="supplierId" type="hidden" placeholder="Add supplier Id" />
<form:input path="supplierName" placeholder="Add supplier Name" />
<form:errors path="supplierName"></form:errors>
<form:input path="supplierDescription" placeholder="Add supplier Description" />
<form:errors path="supplierDescription"></form:errors>

<input type="Submit" value="Add Supplier">


<h1>SUPPLIER  PAGE</h1>
</form:form>
<br><br>
<table  border= "1">
	<tr>
	   
	    <th>Supplier Id</th>
		<th>Supplier Name</th>
		<th>Supplier Description</th>
		<th>Edit</th>
		<th> Delete</th>
	</tr>


	<c:forEach items="${supplierList}" var="uList">
		<tr>
		 
		    <td>${uList.supplierId}</td>
			<td>${uList.supplierName}</td>
			<td>${uList.supplierDescription}</td>
			<td><a href="updateSupplierById-${uList.supplierId}">EDIT</a></td>
			<td><a href="deleteSupplierById-${uList.supplierId}">DELETE</a></td>
		</tr>
	</c:forEach>

</table>
</body>
</html>