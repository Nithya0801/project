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
Category category=(Category)request.getSession().getAttribute("category");
%>

<h3>
<center>
<form action="${pageContext.request.contextPath}/admin/updateAllCat">
<table style="width:80%;">
<tr>
<td><input type="number" value="<%=category.getCid() %>" name="cid"></td>
<td><input type="text" name="cname"></td>
<td><input type="submit" value="UPDATE"/></td>
</tr>
</form>
</body>
</html>