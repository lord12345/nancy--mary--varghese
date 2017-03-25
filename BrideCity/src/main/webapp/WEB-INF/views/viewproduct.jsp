<%@ include file="header.jsp" %>
<link rel="stylesheet" href="resources/css/button.css"/>

<div class="body-area container-fluid">
<div ng-app="myApp" ng-controller="myCtrl" style="margin-top:0;background-color:#74743a;">
<div class="row">
<div class="col-md-6 well-lg" height="600" width=300">

<div style="border-style: solid;border-width: thin;">
<center>
<img src="resources/data/productImage-{{myScope.productId}}.jpg" class="well-sm" width="70%" />
</center>

</div>

</div>



<!-- <div class="col-md-6 well" style="border-style: solid;border-color:rgba(0,0,0,0) border-width: thin;border-radius: 5px 5px 5px 5px;">
<div style="border-style: solid;border-width: thin;"> -->
<!-- <img src="resources/data/productImage-{{myScope.productId}}.jpg"/>
</div>

</div> 
 -->
<div class="col-md-6 well-lg">

<div class="col-md-5 well" style="border-style: solid;border-color:orange;border-width: thin;border-radius: 5px 5px 5px 5px;">
<h1><b>Item:</b><span style="color:yellow"></span>{{myScope.productName}}</b></h1>
<h2><b>Brand:</b><span style="color:green"></span>{{myScope.brand.brandName}}</b></h2>
<!-- <h3 style="color:red"><b>&#8377 XXX.XX</b></h3> -->
<h4>&#8377<span style="text-decoration: line-through;color:orange;">{{myScope.productActualPrice}}</span>
<span style="color:green">{{myScope.productDiscount}}% off</span></h4>
<h4><b>By: </b><span style="color:blue">{{myScope.supplier.supplierName}}</span></h4>

<a href ="#" class="button button1" data-toggle="tooltip" title="Add To WishList"><i class="glyphicon glyphicon-heart"></i></a>
<a href="addtocart-{{myScope.productId}}" class="button button2" data-toggle="tooltip" title="Add To Cart"><i class="glyphicon glyphicon-shopping-cart"></i></a>
<a href="#" class="button button3" data-toggle="tooltip" title="Buy Now"><i class="glyphicon glyphicon-ok"></i></a>


</div>
</div>

</div>

</div>
</div>

	<script>
			var app = angular.module('myApp', []);
			app.controller('myCtrl', function($scope) {
			$scope.myScope=${productData};
			});
    </script>