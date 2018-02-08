<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<%@include file="welcome.jsp" %>
<br>
<br>
<br>
<center>
<table style="width:80%;">
<tr>
<th>Product ID</th>
<th>Product Name</th>
<th>Description</th>
<th>Stock</th>
<th>Price</th>
<th>Image</th>
</tr>

<%
List<Product> lp=(List<Product>)request.getSession().getAttribute("getPro");
String fn=(String)request.getSession().getAttribute("filename");

for(Product p:lp)
{
%>

<tr>
<td><%=p.getPid() %></td>
<td><%=p.getPname() %></td>
<td><%=p.getDesc() %></td>
<td><%=p.getStock() %></td>
<td><%=p.getPrice() %></td>
<td><img src="./resources/<%=p.getImgname()%>"/></td>
</tr>

<%} %>

</table>
</center>
<form action="${pageContext.request.contextPath}/admin/adminadd"><input type="submit" value="back"></form>
<%@include file="footer.jsp" %>
</body>
</html>