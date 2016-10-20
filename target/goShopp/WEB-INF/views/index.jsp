<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>goShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
		 <div id="section1" class="container-fluid">
		<div id="slide" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#slide" data-slide-to="0" class="active"></li>
				<li data-target="#slide" data-slide-to="1"></li>
				<li data-target="#slide" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/images/boys.jpg" />" class="img-responsive">
				</div>
				<div class="item">
				<img class="img-responsive" src="<c:url value="/resources/images/Shop.jpg" />" alt="First slide">
				</div>
				<div class="item">
					<img src="<c:url value="/resources/images/images.jpg" />" class="img-responsive">
				</div>
				left and right controls
				<a class="left carousel-control" href="#slide" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#slide" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<br>
	<br>

	<div id="section2">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4">
					<a href="/" class="thumbnail" class="rounded"> <img
						src="<c:url value="/resources/images/cloth2.jpg" />" style="width: 400px; height: 300px">
					</a>
				</div>
				<div class="col-md-4">

					<a href="/" class="thumbnail" class="rounded"> <img
						src="<c:url value="/resources/images/cloth1.jpg" />" style="width: 400px; height: 300px">
					</a>
				</div>
				<div class="col-md-4">
					<a href="/" class="thumbnail" class="rounded"> <img
						src="<c:url value="/resources/images/cloth3.jpg" />" style="width: 400px; height: 300px">
					</a>
				</div>
			</div>
		</div>
	</div>



   
	<!-- footer -->
		<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>