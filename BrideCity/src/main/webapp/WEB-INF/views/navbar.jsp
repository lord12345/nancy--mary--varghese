<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/navbar.css" rel="stylesheet" />

</head>
<body>
	<%-- <div id="navbar">
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
		
		<div class="collapse navbar-collapse" id="navbar-collapse-1">
			
			
			
			<c:forEach var="clist" items="${categoryList}">
			<ul class="nav navbar-nav">
				<li class="DropDown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><b>${clist.categoryName}</b></a>
					
					
					
					<ul class="dropdown-menu">
					<c:forEach var="slist" items="${clist.subCategory}">
					
					
						<li><a href="#">${slist.subCategoryName}</a></li>

			        </c:forEach>
                    </ul>
			</ul>
			</c:forEach>
		</div>
		<!-- /.navbar-collapse --> </nav>
	</div> --%>


	<script type="text/javascript" src="resources/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js" /></script>



</body>
</html>