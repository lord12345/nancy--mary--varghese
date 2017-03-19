<%@ include file="header.jsp" %>


<!-- <form  action="perform_login" method="POST">
<input type="text" name="username" placeholder="Enter Your EmailId"/>
<input type="password" name="password" placeholder="Enter Your Password"/>

<input type="submit" value="Login" />
<input type="reset" value="Reset" />
</form>
  -->




 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="resources/css/login.css" rel="stylesheet" />


<title>Insert title here</title>
</head>
<body>

<div class = "container">
	<div class="wrapper">
		<form action="perform_login" method="post" name="Login_Form" class="form-signin">       
		   <h3 class="form-signin-heading">Welcome Back! Please LogIn</h3>
			  <hr class="colorgraph"><br>
			 <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
			  <input type="password" class="form-control" name="password" placeholder="Password" required=""/>     		  
			<button class="btn btn-lg btn-primary btn-block"  name="Submit" value="Login" type="Submit">Login</button>  			
		</form>			
	</div>
</div>

 <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
 <script type="text/javascript" src="resources/js/ bootstrap.min.js" /></script>
 <br><br>  
 <%@ include file="footer.jsp" %>
</body>
</html>