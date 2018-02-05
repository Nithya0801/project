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

<body>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<%@include file="header.jsp" %>
<br>
<br>
<br>
<center>
<table style="width:80%;">
<tr>
<th>SUPPLIER ID</th>
<th>SUPPLIER NAME</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
List<Supplier> l=(List<Supplier>)request.getSession().getAttribute("obj1");
for(Supplier u:l)
{
%>


<tr>
<td><%=u.getSid()%></td>
<td><%=u.getSname()%></td>
<td><a href="updateSupp?sid=<%=u.getSid()%>"><img src="./resources/ed.png"/></a></td>
<td><a href="deleteSupp?sid=<%=u.getSid()%>"><img src="./resources/de.png"/></a></td>

</tr>

<%} %>
</table>
</center>

<%@include file="footer.jsp" %>
</body>
</html>