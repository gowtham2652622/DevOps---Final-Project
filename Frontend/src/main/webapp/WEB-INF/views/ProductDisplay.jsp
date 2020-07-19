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
  <table align="center" class="table">
    <tr>
        <td rowspan="10">
           <img src="<c:url value="/resources/images/${productInfo.productID }.jpg"/>"height="300" width="200"/>
        </td>
     </tr>
     <tr>
         <td>productID</td>
         <td>${productInfo.productID}</td>
     </tr>
      <tr>
          <td>product Name</td>
          <td>${productInfo.productName}</td>
      </tr>
      <tr>
              <td>Category</td>
          <td>${categoryName}</td>
       </tr>
         <tr>
              <td>supplier Name</td>
          <td>${supplierName}</td>
       </tr>            
       <tr>
              <td>price</td>
          <td>${productInfo.price}</td>
       </tr>
       <tr>
              <td>stock</td>
          <td>${productInfo.quantity}</td>
       </tr>
       <tr>
              <td>product Description</td>
          <td>${productInfo.productDesc}</td>
       </tr>
       <form action= "<c:url value ="/addToCart/${productInfo.productID}"/> method="get">
       <tr>
              <td>Quantity</td>
              <td><input type="text" name="Quantity" required/></td>
       </tr>
       <tr>
              <td><input type="Submit"  value="Add To Cart" class="btn btn-info"/></td>
       </form>
  </table>
</div>
</body>
<%@include file="Footer.jsp"%>
</html>