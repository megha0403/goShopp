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
			<h3>All Products</h3>
		</div>
		<table class="table table-striped table-hover">

			<thead>
				<tr class="bg-success">
					<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Product Price</th>
				<th width="120">Product Quantity</th>
				<th width="120">Product Category</th>
				
				</tr>
			</thead>
			<c:forEach items="${product}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.category}</td>
					<td>${product.price}USD</td>
					<td>${product.quantity}</td>

				</tr>
			</c:forEach>
		</table>