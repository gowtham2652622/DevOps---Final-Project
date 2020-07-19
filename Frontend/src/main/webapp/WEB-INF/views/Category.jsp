<%@include file="Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<form action="addCategory" , method="	post">
		<table>
			<tr>
				<td>CategoryName</td>
				<td><input type="text" name="categoryname" /></td>
			</tr>
			<tr>
				<td>CategoryDesc</td>
				<td><input type="text" name="categorydesc" /></td>
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
				<center>= "Category Details"</center>
			</td>
		</tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Edit</td>
		<td>Delete</td>
		</tr>
		<c:forEach items="${categoryList }" var="category">
			<tr>
				<td>${category.categoryID }</td>
				<td>${category.categoryName }</td>
				<td>${category.categoryDesc }</td>
				<td><a>href ="<c:url
							value="/editCategory/${category.categoryID}" /></a></td>
				<td><a>href ="<c:url
							value="/deleteCategory/${category.categoryID}" /></a></td>
			</tr>
		</c:forEach>
	</table>
	<%@include file="Footer.jsp"%>
</body>
</html>