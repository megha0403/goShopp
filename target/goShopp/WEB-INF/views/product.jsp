<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Spring 3 MVC Hibernate - Book CRUD</title>
<style type="text/css">
body {
	font-family: verdana;
	font-size: 12px;
	margin: 40px;
}

.productTable, .productTable td {
	border-collapse: collapse;
	border: 1px solid #aaa;
	margin: 2px;
	padding: 2px 2px 2px 10px;
	font-size: 12px;
}

.productTable th {
	font-weight: bold;
	font-size: 12px;
	background-color: #5C82FF;
	color: white;
}

.productLabel {
	font-family: verdana;
	font-size: 12px;
	font-weight: bold;
}

a, a:AFTER {
	color: blue;
}
</style>
<script type="text/javascript">
    function deleteProduct(productId){
        if(confirm('Do you want to delete this product ?')){
            var url = 'delete/'+productId;
            window.location.href = url;
        }
    }
    </script>
</head>
<body>

	<h2>SpringMVC-Hibernate CRUD Application</h2>
	<p style="color: green; font-weight: bold;">
		To add a New Product please click <a href="<c:url value='/index' />">
			<img src="<c:url value='/images/vcard_add.png' />"
			title="Add a New Product" />
		</a>
	</p>
	<c:url var="action" value="/product/add.html"></c:url>
	<form:form method="post" action="${action}" commandName="product"
		cssClass="bookForm">
		<table>
			<c:if test="${!empty product.productName}">
				<tr>
					<td><form:label path="id" cssClass="productLabel">
							<spring:message code="label.productId" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							disabled="true" /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="productName" cssClass="productLabel">
						<spring:message code="label.productName" />
					</form:label></td>
				<td><form:input path="productName" /></td>
			</tr>
			<tr>
				<td><form:label path="price" cssClass="productLabel">
						<spring:message code="label.price" />
					</form:label></td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty product.productName}">
						<input type="submit"
							value="<spring:message code="label.editproduct"/>" />
					</c:if> <c:if test="${empty product.productName}">
						<input type="submit"
							value="<spring:message code="label.addproduct"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<h3>List of Products</h3>
	<c:if test="${!empty productList}">
		<table class="productTable">
			<tr>
				<th width="180">Product Name</th>
				<th width="60">Price</th>
				<th width="60">Action</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td><a href="<c:url value='/edit/${product.id}' />">${product.productName}</a>
					</td>
					<td>${book.price}</td>

					<td><img src="<c:url value='/images/vcard_delete.png' />"
						title="Delete product"
						onclick="javascript:deleteProduct(${product.id})" /> <a
						href="<c:url value='/edit/${product.id}' />"> <img
							src="<c:url value='/images/vcard_add.png' />"
							title="Edit product" />
					</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>


</body>
</html>