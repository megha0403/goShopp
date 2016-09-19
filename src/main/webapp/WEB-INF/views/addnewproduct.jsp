<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Product Page</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>

</head>
<body>
	<table>
		<h1>Add a Product</h1>

		<spring:url value="/add" var="userActionUrl" />

		<form:form method="get" modelAttribute="product"
			action="${userActionUrl}">

			<c:if test="${!empty product.name}">
				<form:label path="id">
					<spring:message text="ID" />
				</form:label>
				<form:input path="id" readonly="true" size="8" disabled="true" />
				<br />
				<!-- <form:hidden path="id" /> -->
			</c:if>
			<spring:bind path="name">
				<tr>
					<td><label class="col-sm-2 control-label">Product
							Name:</label></td>
					<td><form:input path="name" type="text" class="form-control"
							id="name" placeholder="Product Name" /></td>
				</tr>
			</spring:bind>
			<br />
			<spring:bind path="category">
				<tr>
					<td><label class="col-sm-2 control-label">Category</label></td>
					<td><form:input path="category" class="form-control"
							id="category" placeholder="Category" /></td>
				</tr>
			</spring:bind>
			<br />
			<spring:bind path="quantity">
				<tr>
					<td><label class="col-sm-2 control-label">Quantity</label></td>
					<td><form:input path="quantity" class="form-control"
							id="quantity" placeholder="Quantity" /></td>
			</spring:bind>
			<br />
			<spring:bind path="price">
				<tr>
					<td><label class="col-sm-2 control-label">Price</label></td>
					<td><form:input path="price" class="form-control" id="price"
							placeholder="price" /></td>
			</spring:bind>
			<td colspan="2"><c:if test="${!empty product.name}">
					<input type="submit" value="<spring:message text="Edit Product"/>" />
				</c:if> <c:if test="${empty product.name}">
					<input type="submit" value="<spring:message text="Add Product"/>" />
				</c:if></td>
			<br />

		</form:form>

	</table>

	<%-- 	<c:url var="addAction" value="/add"></c:url>

	<form:form action="${addAction}" method="POST" modelAttribute="product">
		<table>
			<c:if test="${!empty product.name}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><label path="name">
						<spring:message text="Name" />
					</label></td>
				<td><input path="name" /></td>
			</tr>
			<tr>
				<td><label path="price">
						<spring:message text="Price" />
					</label></td>
				<td><input path="price" /></td>
			</tr>
			
			<tr>
				<td><label path="quantity">
						<spring:message text="Quantity" />
					</label></td>
				<td><input path="quantity" /></td>
			</tr>
			
			<tr>
				<td><label path="category">
						<spring:message text="Category" />
					</label></td>
				<td><input path="category" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
 --%>
	<br>
	<%-- <script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
              "oSearch": {"sSearch": searchCondition}
        });
    });

</script>
 	<h3>Products List</h3>
	<c:if test="${!empty p}">
		<table class="tg">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Product Price</th>
				<th width="120">Product Quantity</th>
				<th width="120">Product Category</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${p}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td>${product.category}</td>
					<td><a href="<c:url value='/edit/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='/remove/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if> --%>
</body>
</html>