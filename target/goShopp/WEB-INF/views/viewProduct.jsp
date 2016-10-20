<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%> 
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
	background-color: white;
	color: white;
}
</style>
<div class="container-wrapper">
	<div class="container">

		<h1>
			<i>Product Detail</i>
		</h1>

		<p class="lead">Here is the detail information of the product:</p>
	</div>

	<div class="container">
		<div class="row">
			<div>
				<table>
					<%--  <tr>
					 <td>
                <img src="<c:url value="/resources/images/${product.id}.gif" />" alt="image" style="width:30%"/>
                </td>
               
					</tr>
				 --%> 	<tr>
						<td><strong>Product Name</strong></td>
						<%-- <td> ${product.name} </td> --%>
					</tr>
					<tr>
						<td><strong>Category</strong></td>
						<%-- <td>${product.category}</td> --%>
					</tr>
					<tr>
						<td>
							<p>
								<strong>Quality</strong>
						</td>
						<%-- <td>${product.quantity}</td> --%>
					</tr>
					<tr>
						<td>
							<p>
								<strong>Price</strong>
						</td>
						<%-- <td>${product.price} USD</td> --%>
					</tr>
				</table>
				<br />

				<c:set var="role" scope="page" value="${param.role}" />
				<c:set var="url" scope="page" value="/showproducts" />
				<c:if test="${role='megha'}">
					<c:set var="url" scope="page" value="/addnewproduct" />
				</c:if>
				<p ng-controller="cartCtrl">
					<a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
					<a href="<spring:url value="/" />" class="btn btn-default"><span
						class="glyphicon glyphicon-hand-right"></span> View Cart</a>
				</p>

			</div>
		</div>
	</div>

</div>

<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>


<%@ include file="/WEB-INF/views/template/footer.jsp"%>
