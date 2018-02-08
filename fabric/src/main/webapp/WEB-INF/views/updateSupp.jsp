<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.project.Model.*" %>
<%
Supplier supplier=(Supplier)request.getSession().getAttribute("supplier");
%>

<h3>
<center>
<form action="${pageContext.request.contextPath}/admin/updateAll">
<table style="width:80%;">
<tr>
<td><input type="number" value="<%=supplier.getSid() %>" name="sid"></td>
<td><input type="text" name="sname"></td>
<td><input type="submit" value="UPDATE"/></td>
</tr>
</form>
</body>
</html>