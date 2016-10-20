<%@include file="/WEB-INF/views/template/header.jsp"%>
<style>
table, tr, td {
   border: 1px solid black;
}
</style>
<br>
<br>
<br>
<br>
<div ng-app="myApp" ng-controller="myCtrl"> 
<input type="text" ng-model="search" class="inputText">

<table border="1">
<tr>
<td ng-click="orderByMe('name')"> Name </td>
<td ng-click="orderByMe('price')"> Price </td>
<td ng-click="orderByMe('quantity')"> Quantity </td>
<td ng-click="orderByMe('category')"> Category </td>
</tr>
  <tr ng-repeat="x in mylist | filter:search | orderBy:myOrderBy">
    <td>{{ x.name }}</td>
    <td>{{ x.price }} INR</td>
    <td>{{ x.quantity }}</td>
    <td>{{ x.category }}</td>
  </tr>
</table>

</div>

<script type="text/javascript">
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope)
{
    $scope.mylist= ${list}

$scope.orderByMe = function(x) {
    $scope.myOrderBy = x;
}
});
</script>
</body>
</html>