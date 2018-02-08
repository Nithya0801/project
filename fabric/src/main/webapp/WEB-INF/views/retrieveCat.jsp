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

<%@include file="header.jsp" %>
<br>
<br>
<br>
<center>
<table style="width:80%;">
<tr>
<th>CATEGORY ID</th>
<th>CATEGORY NAME</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
List<Category> l=(List<Category>)request.getSession().getAttribute("obj2");
for(Category u:l)
{
%>


<tr>
<td><%=u.getCid() %></td>
<td><%=u.getCname()%></td>
<td><a href="updateCat?cid=<%=u.getCid()%>"><img src="./resources/ed.png"/></a></td>
<td><a href="deleteCat?cid=<%=u.getCid()%>"><img src="./resources/de.png"/></a></td>

</tr>

<%} %>
</table>
</center>
<form action="adminadd"><input type="submit" value="back"></form>
<%@include file="footer.jsp" %>
</body>
</html>