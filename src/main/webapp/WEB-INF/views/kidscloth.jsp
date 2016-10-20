<%@include file="/WEB-INF/views/template/header.jsp"%>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';

		$('.table').DataTable({
			"oSearch" : {
				"sSearch" : searchCondition
			}
		});
	});
</script>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h3>Women Clothes</h3>
		</div>

		<table class="table table-striped table-hover">
			

				<thead>
					<tr class="bg-success">
						<!-- <th>Image</th> -->
						<th>ID</th>
						<th>Name</th>
						<th>Category</th>
						<th>Price</th>
						<th>Quantity</th>
						<th></th>
						<th></th>
						<th></th>

					</tr>
				</thead>
				<c:forEach items="${product}" var="product">
					<tr>
						<%-- <td><img
						src="<c:url value="/resources/images/${product.id}.jpg" />"
						alt="image" style="width: 100%" /></td>
 --%>
						<td>${product.id}</td>
						<td>${product.name}</td>
						<td>${product.category}</td>
						<td>${product.price}USD</td>
						<td>${product.quantity}</td>
						<td><a href="<c:url value="/viewProduct/${product.id}" />">
								<span class="glyphicon glyphicon-info-sign"></span>
						</a></td>
						<%-- 
					<c:if test="${pageContext.request.userPrincipal.name == 'megha'}">
						<td><a href="<c:url value='/edit/${product.id}' />">Edit</a></td>
						<td><a href="<c:url value='/remove/${product.id}' />">Delete</a></td>

					</c:if>
 --%>
					</tr>
				</c:forEach>
		
		</table>