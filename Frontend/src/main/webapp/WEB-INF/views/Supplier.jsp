<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<form action="addSupplier" , method="	post">
		<table>
			<tr>
				<td>SupplierName</td>
				<td><input type="text" name="suppliername" /></td>
			</tr>
			<tr>
				<td>SupplierDesc</td>
				<td><input type="text" name="supplierdesc" /></td>
			</tr>
			<tr>
				<td>Submit</td>"src/main/webapp/WEB-INF/views/Cart.jsp"
				<td><input type="submit" name="Submit" /></td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td>
				<center>= "Supplier Details"</center>
			</td>
		</tr>
		<td>Supplier ID</td>
		<td>Supplier Name</td>
		<td>Supplier Desc</td>
		<td>Edit</td>
		<td>Delete</td>
		</tr>
		<c:forEach items="${supplierList }" var="supplier">
			<tr>
				<td>${supplier.supplierID }</td>
				<td>${supplier.supplierName }</td>
				<td>${supplier.supplierDesc }</td>
				<td><a>href ="<c:url
							value="/editSupplier/${supplier.supplierID}" /></a></td>
				<td><a>href ="<c:url
							value="/deleteSupplier/${supplier.supplierID}" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<%@include file="Footer.jsp"%>
</body>
</html>