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
	<table align="center" class="table table-bordered">
		<tr>
			<td>ProductName</td>
			<td>Price</td>
			<td>Quantity</td>
			<td>TotalPrice</td>
			<td>Edit</td>
			<td>Delete</td>
		</tr>
		<c:forEach items="${CartItem }" var="cartItem">
			<form
				action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
				method="get">
				<tr>
					<td>${cartItem.productName}</td>
					<td>${cartItem.price }</td>
					<td><input type="text" value="${CartItem.quantity}"
						name="quantity" required></td>
					<td>${cartItem.quantity * catItem.price}</td>
					<td><input type="submit" value="Edit"
						class="glyphicon glyphicon-pencil"></td>
					<td><a
						href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"><span
							class="glyphicon glyphicon-trash"></</span></a></td>
				</tr>
			</form>
		</c:forEach>
		<tr>
			<td colspan="4" align="center">Total</td>
			<td colspan="2">${grandTotal}</td>
		</tr>
		<tr>
			<td colspan="3"><a href="<c:url value="/productCatalog"/>"
				class="btn btn-info">continue shopping</a></td>
			<td colspan="3"><a href="<c:url value="/checkout"/>"
				class="btn btn-info">proceed to payment</a></td>
		</tr>

	</table>
</body>

<%@include file="Footer.jsp"%>
</html>