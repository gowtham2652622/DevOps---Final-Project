<%@include file="Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<c:forEach items="${productList}" var="product">
				<div class="col-md-4 col-xs12 col-sm-6">
					<h4>
						<span data-toggle="tooltip" title="Bootstrap version">${product.productName}&nbsp;RS.${product.price}/-</span>
					</h4>
					<img
						src="<c:url value="/resources/images/${product.productID}.jpg"/>"
						class="img-thumbnail" height="100" width="100" /> <a
						href="<c:url value="/productDisplay/${product.productID}"/>"
						class="btn btn-primary col-xs-12" role="button">click for
						large</a>
					<div class="clearfix"></div>
				</div>
		</div>
		</c:forEach>
	</div>
	</div>
</body>
<%@include file="Footer.jsp"%>
</html>

