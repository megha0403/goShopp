<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
              "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Products List</h1>
                </div>
            </div>
        </section>
     
 	 <table class="table table-striped table-hover">
        		<thead><tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Product Price</th>
				<th width="120">Product Quantity</th>
				<th width="120">Product Category</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr></thead>
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
 </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>