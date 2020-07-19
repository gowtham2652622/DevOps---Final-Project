<%@include file="Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h2>Welcome to Product Page!</h2>
	<form action="<c:url value="/updateProduct"/>" method="post">

		<table align="center" class="table-bordered">
			<tr>
				<td>Product ID</td>
				<td><input type="text" name="productID"
					value="${productData.productID }" / readonly></td>
			</tr>
			<tr>
				<td colspan="2">Product Detail</td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName"
					value="${productData.productName }" /></td>
			</tr>
			<tr>
				<td>Product Desc</td>
				<td><input type="text" name="productDesc"
					value="${productData.productDesc }" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price"
					value="${productData.price }" /></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><input type="text" name="quantity"
					value="${productData.quantity }" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update Product" /></td>
			</tr>
		</table>
	</form>
</body>
<%@include file="Footer.jsp"%>

</html>

