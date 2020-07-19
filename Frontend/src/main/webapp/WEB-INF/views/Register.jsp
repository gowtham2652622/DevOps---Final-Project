<%@include file="Header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<form action ="registerUser">
		<div>
			<label> CustomerName </label> <input type="text" name="customerName" />
		</div>
		<div>
			<label> UserName </label> <input type="text" name="userName" />
		</div>
		<div>
			<label> Password </label> <input type="password" name="password" />
		</div>
		<div>
			<label> Email ID</label> <input type="text" name="EmailID" />

		</div>
		<div>
			<label> Mobile Number </label> <input type="text" name="mobileNumber" />

		</div>
		<input type="submit" value="Submit"> <input type="reset"
			value="Reset">
			</form>
</body>
<%@include file="Footer.jsp"%>

</html>