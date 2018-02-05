<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<% List<Supplier> ll=(List<Supplier>)request.getSession().getAttribute("ls");

 List<Category> ll1=(List<Category>) request.getSession().getAttribute("lc");
 
 List<String> ll2=(List<String>)request.getSession().getAttribute("categoryName");

 List<String> ls=(List<String>) request.getSession().getAttribute("supplierName");
 %>
<h5>
<center>

<form action="insertProdData" method="post" enctype="multipart/form-data">


Product Name : <input type="text" name="pname"/><br><br>

Product Description : <input type="text" name="desc"/><br><br>

Product Price : <input type="number" name="price"/><br><br>

Product Stock : <input type="number" name="stock"/><br><br>

Category List:<select name="cat">
<option>-----Category List----</option>
<% for(String v:ll2)
	{
%>
	<option value="<%=v%>"><%=v%></option>
	
	<%} %>

</select>

Supplier List:<select name="sup">
<option>-----Supplier List----</option>
<% for(String v1:ls)
	{
%>
	<option value="<%=v1%>"><%=v1%></option>
	
	<%} %>

</select><br><br>

Image File: <input type="file" name="file"/> 


<br>
<br>
<input type="submit" value="insert"/>

</form>


</body>
</html>