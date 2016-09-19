<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<center>
		<h2>Add New Product</h2>
		<form:form method="POST" action="addsuccess">
			<table>
				<tr>
					<td><form:label path="productId">Product ID:</form:label></td>
					<td><form:input path="productId" value="${product.productId}" /></td>
				</tr>
				<tr>
					<td><form:label path="productName">Product Name:</form:label></td>
					<td><form:input path="productName"
							value="${product.productName}" /></td>
				</tr>
<tr>
					<td><form:label path="productPrice">Product Price:</form:label></td>
					<td><form:input path="productPrice"
							value="${product.productPrice}" /></td>
				</tr>

				<tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="SAVE" /></td>
				</tr>
			</table>
		</form:form>
		<br />
		<c:if test="${!empty products}">
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
					<td><input type="button" value="details"></input></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"></input></td>

				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><input type="button" value="details"></input></td>

				</tr>
			</tbody>
		</table>
	</div>
	<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

</body>
</html> --%>