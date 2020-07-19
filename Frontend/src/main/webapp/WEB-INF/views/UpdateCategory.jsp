<%@include file="Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<h2>Welcome to Category Page!</h2>
	<form action="<c:url value="/updateCategory"/>" method="post">

		<table align="center" class="table-bordered">
			<tr>
				<td colspan="2">Category Detail</td>
			</tr>
			<tr>
			<tr>
				<td>Category ID</td>
				<td><input type="text" name="categoryID"
					value="${category.categoryID }" /></td>
			</tr>

			<td>Category Name</td>
			<td><input type="text" name="categoryName"
				value="${category.categoryName }" /></td>
			</tr>
			<tr>
				<td>Category Desc</td>
				<td><input type="text" name="categoryDesc"[]>
			</tr>
			<input type="submit" value="Update Category" />
			</td>
			</tr>

		</table>
	</form>
</body>
<%@include file="Footer.jsp"%>

</html>
