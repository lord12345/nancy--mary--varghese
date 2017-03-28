<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    
    
    <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  
  
  
  
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="resources/css/style.css"/>

<link href="resources/css/bootstrap.min.css" rel="stylesheet" /> 
<!-- <link href="resources/css/header.css" rel="stylesheet" /> -->

 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<title>Insert title here</title>

</head>
<body>


<%-- <div class="row">

<div class="category-logo col-md-4 ">
<img src="resources/img/logo.jpg" width="250px" height="150px" />  
</div>      

 
    <a class="navbar-brand" href="#">BrideCity</a>
    
     <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">ContactUs</a></li>
      <li><a href="#">Cart</a></li>
    
    <form class="navbar-form navbar-left">
     
     
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    
    </form>
     
     
     
     
     <li><a href=""><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>

</div> --%>
<nav class="navbar navbar-transparent">
  
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">BrideCity</a>
    </div>
<!-- Collect the nav links, forms, and other content for toggling -->
 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
         -->
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> GOWNS<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Sleeve</a></li>
            <li><a href="#">Sleeveless</a></li>
            <li><a href="#">ShoulderOff</a></li>
            
          </ul>
        </li>
         <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">FOOTWEARS <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Heels</a></li>
            <li><a href="#">Wedges</a></li>
            <li><a href="#">Flats</a></li>
            
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">BOUQUETS <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Red</a></li>
            <li><a href="#">Blue</a></li>
            <li><a href="#">White & Golden</a></li>
            <!-- <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li> -->
          </ul>
        </li>
        
        
        
        
        
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
     
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> 
        <li>
        <a href="#" style="space-top:10px;color:blue;">
    	   <security:authorize access="isAuthenticated()">
   	       <security:authentication property="principal.username" /> 
	       </security:authorize> 
	  </a></li>
	  
	      <c:if test="${pageContext.request.userPrincipal.name == null}"> 
       <li><a href="registrationPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          </c:if>
        
          <c:if test="${pageContext.request.userPrincipal.name == null}">    
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </c:if>
        
        
       <c:if test="${pageContext.request.userPrincipal.name != null}">
        <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        </c:if>
        
        
      
        
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADMINPANEL<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="categoryPage">CATEGORY</a></li>
            <li><a href="subCategoryPage">SUBCATEGORY</a></li>
            <li><a href="productPage">PRODUCT</a></li>
            <li><a href="brandPage">BRAND</a></li>
            <li><a href="supplierPage">SUPPLIER</a></li>
            <li><a href="#">USER MANAGEMENT</a></li>
            
          </ul>
        </li>
        </sec:authorize>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

 <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
 <script type="text/javascript" src="resources/js/bootstrap.min.js" /></script>
 <script type="text/javascript" src="resources/js/angular.min.js"/></script>