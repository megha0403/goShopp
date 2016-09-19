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
			<!-- inserting images -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="C:\Users\Megha\Desktop\boys.jpg" class="img-responsive">
				</div>
				<div class="item">
					<img src="C:\Users\Megha\Desktop\Shop.jpg" class="img-responsive">
				</div>
				<div class="item">
					<img src="C:\Users\Megha\Desktop\images.jpg" class="img-responsive">
				</div>
				<!-- left and right controls -->
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
					<a href="Shop.jpg" class="thumbnail" class="rounded"> <img
						src="C:\Users\Megha\Desktop\boys.jpg" style="width: 400px; height: 300px">
					</a>
				</div>
				<div class="col-md-4">

					<a href="rt2.jpg" class="thumbnail" class="rounded"> <img
						src="C:\Users\Megha\Desktop\Shop.jpg" style="width: 400px; height: 300px">
					</a>
				</div>
				<div class="col-md-4">
					<a href="shop1.jpeg" class="thumbnail" class="rounded"> <img
						src="C:\Users\Megha\Desktop\images.jpg" style="width: 400px; height: 300px">
					</a>
				</div>
			</div>
		</div>
	</div>



	<!-- footer -->
		<%@include file="/WEB-INF/views/template/footer.jsp"%>
</body>
</html>