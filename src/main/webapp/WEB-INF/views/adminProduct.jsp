<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Table</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">


<link href='https://fonts.

googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<!-- logo -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#mainNavBar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand"> <img src="C:\Users\Megha\Desktop\logo.png" height="26">
			</a>
			<h4 style="color: white;">
				<i><b> goShop </b></i>
			</h4>
		</div>
		<!-- menu -->
		<div class="collapse navbar-collapse" id="mainNavBar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"> Home </a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> Category <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Women </a></li>
						<li><a href="#"> Men </a></li>
						<li><a href="#">Kids </a></li>

					</ul>
				<li><a href="Product1"> Product </a></li>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="addProduct"> Add Product </a></li>
			</ul>
		</div>
	</div>

	</nav>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="table-responsive">
		<table id="myTable" class="display table" width="100%">

			<thead>
				<tr>
					<th style="width: 25%;">Product id</th>
					<th style="width: 25%;">Product Name</th>
					<th style="width: 25%;">Price</th>
					<th style="width: 25%;">Details</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"><input type="button" value="Edit"></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"><input type="button" value="Edit"></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"><input type="button" value="Edit"></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"><input type="button" value="Edit"></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"><input type="button" value="Edit"></td>

				</tr>
			</tbody>
		</table>
	</div>
	<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

	<div class="navbar navbar-inverse">
		<div class="container-fluid">
			<div id="mainNavBar">
				<div class="navbar-text pull-left">goShop.com</div>
				<ul class="nav navbar-nav">

					<li><a href="#">About Us </a></li>
					<li><a href="#"> Contact Us </a></li>
				</ul>
			</div>
			<div class="navbar-text pull-right">
				<a href="#"> <i class="fa fa-facebook-square fa-2x"
					aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter"></i></a>
			</div>
		</div>
	</div>

</body>
</html>