<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>
<br><br>
	<div class="jumbotron">
	<h1>Shipping Address</h1>
	</div>
	<table>
		<tr>
			<td>State</td>
			<td><select>
					<option value="Delhi">Delhi</option>
					<option value="Punjab">Punjab</option>
					<option value="Karnatka">Karnatka</option>
					<option value="Mumbai">Mumbai</option>
			</select></td>
		</tr>
		<tr>
			<td>Street</td>
			<td><input type="text" name="street"></td>
		</tr>

		<tr>
			<td>Mobile no.</td>
			<td><input type="text" name="mobile"></td>
		</tr>
		<tr>
			<td>Email Id</td>
			<td><input type="email" name="email"></td>
		</tr>
	</table>
	<a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
	<a href="<c:url value="/cart" />" class="btn btn-default"><span
		class="glyphicon glyphicon-hand-right"></span> View Cart</a>

	<a href="<c:url value="/confirmation" />" class="btn btn-default"
		align="right">Next</a>
</body>
</html>