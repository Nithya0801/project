<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<br>
<br>
<br>
<h4>ProductList</h4>
<table border="2">
<tr><th>ProductName</th>
<th>ProductDesc</th>
<th>Stock</th>
<th>Price</th>
<th>Image</th>
</tr>
<c:forEach var="l" items="${list}">
<tr>
<td>${l.pname }</td>
<td>${l.desc }</td>
<td>${l.stock }</td>
<td>${l.price }</td>
<td><img src="./resources/${l.imgname}"/></td>

</tr>

</c:forEach>
<tr>
</tr>

</table>

<br>
<br>
<br>
<%@include file="footer.jsp" %>
</body>
</html>