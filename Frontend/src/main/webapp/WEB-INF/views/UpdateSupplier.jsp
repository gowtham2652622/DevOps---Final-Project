<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h2>Welcome to Supplier Page!</h2>
	<form action="<c:url value="/updateSupplier"/>" method="post">

		<table align="center" class="table-bordered">
			<tr>
				<td colspan="2">Supplier Detail</td>
			</tr>
			<tr>
			<tr>
				<td>Supplier ID</td>
				<td><input type="text" name="supplierID"
					value="${supplier.supplierID }" /></td>
			</tr>

			<td>Supplier Name</td>
			<td><input type="text" name="supplierName"
				value="${supplier.supplierName }" /></td>
			</tr>
			<tr>
				<td>Supplier Desc</td>
				<td><input type="text" name="supplierDesc"[]>
			</tr>
			<input type="submit" value="Update Supplier" />
			</td>
			</tr>

		</table>
	</form>
</body>
<%@include file="Footer.jsp"%>

</html>
