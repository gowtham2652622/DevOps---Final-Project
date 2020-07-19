<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.j+s"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="menu"><i class="fa fa-bars" id="menu_icon"></i></a> <a
				class="navbar-brand" href="index">SMART MOBILES </a>
		</div>

		<div class="collapse navbar-collapse drop_menu" id="content_details">
			<c:if test="${!sessionScope.loggedIn }">
				<ul class="nav navbar-nav">
					<li><a href="index" class="glyphicon glyphicon-home"> Home</a>
					<li><a href="aboutus" class="glyphicon glyphicon-user">
							AboutUs</a></li>
					<li><a href="contactus" class="glyphicon glyphicon-earphone">
							ContactUs</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="register" class="glyphicon glyphicon-user">
							SignUp</a></li>
					<li><a href="login" class="glyphicon glyphicon-log-in">
							SignIn</a></li>
				</ul>
			</c:if>
			<c:if test="${sessionScope.loggedIn }">
				<c:if test="${sessionScope.role=='ROLE_ADMIN' }">
					<ul class="nav navbar-nav">
						<!-- <li><a href="#" class="glyphicon glyphicon-home"> Home</a> -->
						<li><a href="category" class="glyphicon glyphicon-th-list">
								Category</a></li>
						<li><a href="supplier" class="glyphicon glyphicon-user">
								Supplier</a></li>
						<li><a href="product" class="glyphicon glyphicon-th">
								Product</a></li>
					</ul>
				</c:if>
			</c:if>
			<c:if test="${sessionScope.role=='ROLE_USER' }">
				<ul class="nav navbar-nav">
					<!-- <li><a href="#" class="glyphicon glyphicon-home"> Home</a> -->
					<li><a href="<c:url value="/productCatalog""
						class="glyphicon glyphicon-th"> Product</a></li>
					<li><a href="<c:url value="/cart""
						class="glyphicon glyphicon-shopping-cart">" Cart</a></li>


				</ul>
			</c:if>


		</div>
		<div class="nav navbar-nav navbar-right">
			<c:if test=${sessionScope.loggedIn }">
				<font color="white" class="glyphicon glyphicon-user">${sessionScope.username }</font>
				<br>
			</c:if>
		</div>
	</div>
	</nav>

</body>
<%@include file="Footer.jsp"%>
</html>