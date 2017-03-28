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

<%@ include file="footer.jsp" %>





