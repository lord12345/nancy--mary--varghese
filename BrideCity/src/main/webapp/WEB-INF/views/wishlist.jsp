<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css"/>


<!-- Product List -->

 <div ng-app="myApp">
 <div class="text-center">
 	<h1>Wish List</h1>
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
</tr>

<tr ng-repeat="w in myScope | filter:search ">
<td><img src="resources/data/productImage-{{w.productId}}.jpg" width="30%"></td>
<td>{{w.productName}}</td>
<td>{{w.quantity}}</td>
<td>{{w.rate}}</td>
<td>{{w.discount}}</td>
<td>{{w.amount}}</td>
<td><a href="removefromcart-{{w.wishItemId}}"><button class="button button1">Remove From Wish</button></a></td>

</tr>
</table>
</div>
 </div>



<script>
			var app = angular.module('myApp', []);
			app.controller('myController', function($scope) {
			$scope.myScope=${wishItemsListJSON};
			}); 
			
</script>

<%@ include file="footer.jsp" %>





