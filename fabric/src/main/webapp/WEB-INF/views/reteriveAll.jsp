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
<th>ID</th>
<th>NAME</th>
<th>PASSWORD</th>
<th>ADDRESS</th>
<th>COUNTRY</th>
<th>EMAIL</th>
<th>PHONE</th>
</tr>
<%
List<User> l=(List<User>)request.getSession().getAttribute("obj");
for(User u:l)
{
%>


<tr>
<td><%=u.getId() %></td>
<td><%=u.getName() %></td>
<td><%=u.getPwd() %></td>
<td><%=u.getAddress() %></td>
<td><%=u.getCountry() %></td>
<td><%=u.getEmail() %></td>
<td><%=u.getPhone() %></td>
</tr>

<%} %>
</table>
</center>
<form action="adminadd"><input type="submit" value="back"></form>
<%@include file="footer.jsp" %>
</body>
</html>