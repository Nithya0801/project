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
<%@page import="com.project.Model.*" %>
<%@page import="java.util.*" %>
<%@include file="welcome.jsp" %>

<br>
<br>
<br>
<form action="${pageContext.request.contextPath}/admin/upPro" method="post" enctype="multipart/form-data">

	<%
	List<Supplier> suppliers=(List<Supplier>) request.getAttribute("suppliers");
List<Category> category=(List<Category>)request.getAttribute("categories");
	List<Product> pro=(List<Product>)request.getAttribute("prod");
for(Product p:pro)
{
%>

				<input type="hidden" name="pid" value="<%=p.getPid()%>"> 
				Product Name : <input type="text" name="pname" value="<%=p.getPname()%>" required/><br>
					<br> Product Description : <input type="text" name="desc" value="<%=p.getDesc()%>" required/><br>
					<br> Product Price : <input type="number" name="price" value="<%=p.getPrice()%>" required/><br>
					<br> Product Stock : <input type="number" name="stock" value="<%=p.getStock()%>" required/><br>
					<%} %>
					<br> Category List:<select name="cat" required>
						<option>-----Category List----</option>		
						<% for(Category c:category){%>
						
						<option value="<%=c.getCid()%>"><%=c.getCname() %></option>		
						
						<%} %>

					</select> Supplier List:<select name="sup" required>
						<option>-----Supplier List----</option>
					   <% for(Supplier s:suppliers){ %>
					   
					   <option value="<%=s.getSid()%>"><%=s.getSname() %></option>
					   <%} %>--%>
					</select><br>
					<br> Image File: <input type="file" name="file" required/> 
 				<input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
 
<input type="submit" value="insert" />
</form>


<%@include file="footer.jsp" %>
</body>
</html>