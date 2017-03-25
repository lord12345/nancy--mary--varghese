<%@ include file="header.jsp" %>
 
 <link rel="stylesheet" href="resources/css/error.css"/>
 
 
<%--  <form:form class="form" modelAttribute="user" action="addUser">
	<form:input class="form-control" type="hidden" path="userId" placeholder="User Id" />
	<form:input class="form-control" path="username" placeholder="Enter EmailId" autofocus="true" />
	<form:input class="form-control" type="password" path="password" placeholder="Password" />
	<form:input class="form-control" path="fname" placeholder="First Name"/>
	<form:input class="form-control" path="lname" placeholder="Last Name"/>
	<form:input class="form-control" path="DOB" placeholder="Date of Birth"/>
	<form:input class="form-control" path="contactNo" placeholder="Contact Number"/>
	
	<input type="submit" value="signup" />
	<input type="reset" value="Reset" />
</form:form> 
 --%>
  

<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link href="resources/css/bootstrap.min.css" rel="stylesheet" /> -->
 <link href="resources/css/signup.css" rel="stylesheet" /> 


<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->
<div class="container">
			
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<!-- <h1 class="title">Company Name</h1> -->
	               		
	               	</div>
	            </div> 
				
				<div class="main-login main-center">
					<!-- <form class="form-horizontal" modelAttribute="user" action="addUser"> -->
					<form:form class="form-horizontal" modelAttribute="user" action="addUser">
						
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">USER NAME</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input class="form-control" path="username" placeholder="Enter EmailId" autofocus="true" /> 
									<form:errors cssClass="error" path="username" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">PASSWORD</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
	                                <form:input class="form-control" type="password" path="password" placeholder="Password" />
	                                <form:errors cssClass="error" path="password" />							
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="fname" class="cols-sm-2 control-label">FNAME</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<form:input class="form-control" path="fname" placeholder="First Name"/>
	                                 <form:errors cssClass="error" path="fname" />							
								</div>
							</div>
						</div>


                       <div class="form-group">
							<label for="lname" class="cols-sm-2 control-label">LNAME</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
							        <form:input class="form-control" path="lname" placeholder="Last Name"/>   
								    <form:errors cssClass="error" path="lname" />
								</div>
							</div>
						</div>





						<div class="form-group">
							<label for="DOB" class="cols-sm-2 control-label">DATE OF  BIRTH</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
		                            <form:input class="form-control" path="DOB" placeholder="Date of Birth"/>
						             <form:errors cssClass="error" path="DOB" />
						        </div>
                             </div>
                         </div>    
                            
						

						<div class="form-group">
							<label for="contactNo" class="cols-sm-2 control-label">CONTACT NO</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<form:input class="form-control" path="contactNo" placeholder="Contact Number"/>
		                             <form:errors cssClass="error" path="contactNo" />				        
						        </div>
                             </div>
                         </div>    
                            
						
						
						<%-- <div class="form-group">
							<label for="alternateContactNo" class="cols-sm-2 control-label">ALTERNATE  CONTACT NO</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
					                <form:input class="form-control" path="alternateContactNo" placeholder="Alternate Contact Number"/>
						           <form:errors cssClass="error" path="alternateContactNo" />	   
	                            </div>
                             </div>
                            
                         </div>    
                            --%>
						
						
						
						<div class="form-group ">
							<button  class="btn btn-primary btn-lg btn-block login-button" type="Submit">SignUp</button>
						</div>
						
					
					
					</form:form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="assets/js/bootstrap.js"></script>
		 <script type="text/javascript" src="resources/js/jquery-3.1.1.min.js" ></script>
        <script type="text/javascript" src="resources/js/ bootstrap.min.js" /></script>
    
 
		<%@ include file="footer.jsp" %> 
</body>
</html>