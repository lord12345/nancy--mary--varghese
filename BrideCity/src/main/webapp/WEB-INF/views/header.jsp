<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/header.css" rel="stylesheet" />

<title>Insert title here</title>

</head>




<style>
.header-area
{
color:white;
background-color:rgba(0,0,0,0.5);
background-image:url("resources/img/p2.jpg");     
position:relative;
width:100%;
position:fixed;
}
</style>

<body>
<div class="header-area navbar">

<div class="row">

<div class="category-logo col-md-4">
<img src="resources/img/logo.jpg" width="80%" />  
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
     <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>

</div>
 </div>
 
 <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js" /></script>
 
 
 

</body>
</html>