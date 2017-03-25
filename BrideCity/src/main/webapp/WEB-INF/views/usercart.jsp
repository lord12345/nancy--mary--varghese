<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css"/>


<!-- Product List -->

 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Cart List</h1>
 </div>
 <div class="row">	
 	   <div class="input-group col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search" />
 		
 	   </div>
 </div>
 
 
 
 <br>
 <div class="table-responsive">
 <table class="table" ng-controller="myController">
<tr>
<th>Product Image</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Rate</th>
<th>Discount</th>
<th>Amount</th>
<th>Remove</th>
<th>CheckOut</th> 

</tr>

<tr ng-repeat="c in myScope | filter:search ">
<td><img src="resources/data/productImage-{{c.productId}}.jpg" width="30%"></td>
<td>{{c.productName}}</td>
<td>{{c.quantity}}</td>
<td>{{c.rate}}</td>
<td>{{c.discount}}</td>
<td>{{c.amount}}</td>
<td><a href="removefromcart-{{c.cartItemId}}"><button class="button button1">Remove From Cart</button></a></td>
<td><a href="checkoutfromcart-{{c.cartItemId}}"><button class="button button2">Checkout Now</button></a></td>
</tr>
</table>
</div>
 </div>



<script>
			var app = angular.module('myApp', []);
			app.controller('myController', function($scope) {
			$scope.myScope=${cartItemsListJSON};
			}); 
			
</script>






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="body-area container">

<H1>CART</H1>
<div class="table-responsive">
<div ng-app="myApp" ng-controller="myCtrl">
<tr>

<th>ProductImage</th>
<th>ProductName</th>
<th>Quantity</th>
<th>Rate</th>


<tr ng-repeat="c in myscope | filter:search |orderBy:orderkeyword : orderflag ">
<td>
<div class="col-md-2">
<img src="resources/data/productImage-{{c.productId}}.jpg" width="100%">
</div>
</td>
<td>{{c.productName}}</td>
<td>{{c.quantity}}</td>

<a href="removefromcart-{{c.cartItemId}}"><button class="btn btn-danger">Remove From Cart</button></a>
<a href="checkoutfromcart-{{c.cartItemId}}"><button class="btn btn-danger">Checkout Now</button></a>
</tr>
</table>



</div>
</div>

</div>

<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${cartItemsListJSON};
			}); 
			
</script>



 --%>