<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>demo</title>
    <link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
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

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<!-- logo -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#mainNavBar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
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
					<li><a href="product"> Product </a></li>
				</ul>
				     
                       <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"><span
							class="glyphicon glyphicon-log-out">Logout</span></a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                 </c:if>
                           </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login" />"><span
							class="glyphicon glyphicon-log-in"> Login</span></a></li>
                        <li><a href="<c:url value="/register" />"> <span
							class="glyphicon glyphicon-user"> Register</span></a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>