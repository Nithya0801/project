<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<body>

	<%@page import="com.project.Model.User"%>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br> WELCOME : ${message}
	<br>
	<br>

	<a href="getAllUser"> User Details</a>|
	<a href="getAllSupp">Supplier Details</a>|
	<a href="getAllCat">Category Details</a>|
	<a href="getAllProduct">Product Details</a>|
	<br>
	<br>
	<br>
	<center>
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'Product')">Product</button>
			<button class="tablinks" onclick="openCity(event, 'Category')">Category</button>
			<button class="tablinks" onclick="openCity(event, 'Supplier')">Supplier</button>
		</div>


		<div id="Category" class="tabcontent">
			<h3>CATEGORY DETAILS</h3>
			<%@include file="category.jsp"%>
		</div>

		<div id="Supplier" class="tabcontent">
			<h3>SUPPLIER DETAILS</h3>
			<%@include file="supplier.jsp"%>
		</div>


		<div id="Product" class="tabcontent">

			
				<form action="insertProdData" method="post" enctype="multipart/form-data">
<%
	List<Supplier> suppliers=(List<Supplier>) request.getAttribute("suppliers");
List<Category> category=(List<Category>)request.getAttribute("categories");
	

%>

					Product Name : <input type="text" name="pname" /><br>
					<br> Product Description : <input type="text" name="desc" /><br>
					<br> Product Price : <input type="number" name="price" /><br>
					<br> Product Stock : <input type="number" name="stock" /><br>
					<br> Category List:<select name="cat">
						<option>-----Category List----</option>		
						<% for(Category c:category){%>
						
						<option value="<%=c.getCid()%>"><%=c.getCname() %></option>		
						
						<%} %>

					</select> Supplier List:<select name="sup">
						<option>-----Supplier List----</option>
					   <% for(Supplier s:suppliers){ %>
					   
					   <option value="<%=s.getSid()%>"><%=s.getSname() %></option>
					   <%} %>
					</select><br>
					<br> Image File: <input type="file" name="file" /> 
					<!-- <inputtype="submit" value="Upload File" /> <br> <br> -->
					
					
					
					<input type="submit" value="insert" />

				</form>

	


			<!-- <@page import="java.util.*" %>

<%--<% List<String> ll=(List<String>)request.getSession().getAttribute("categoryName");

   List<String> ls=(List<String>) request.getSession().getAttribute("supplierName");
%>
<h5>
<center>

<form action="insertProdData">


Product Name : <input type="text" name="pname"/><br><br>

Product Description : <input type="text" name="desc"/><br><br>

Product Price : <input type="number" name="price"/><br><br>

Product Stock : <input type="number" name="stock"/><br><br>

Category List:<select name="cat">
<option>-----Category List----</option>
<% for(String v:ll)
	{
%>
	<option value="<%=v%>"><%=v%></option>
	
	<%} %>--%>

</select><br><br>


<input type="submit" value="insert"/>

</form>-->


		</div>

		<script>
			function openCity(evt, cityName) {
				var i, tabcontent, tablinks;
				tabcontent = document.getElementsByClassName("tabcontent");
				for (i = 0; i < tabcontent.length; i++) {
					tabcontent[i].style.display = "none";
				}
				tablinks = document.getElementsByClassName("tablinks");
				for (i = 0; i < tablinks.length; i++) {
					tablinks[i].className = tablinks[i].className.replace(
							" active", "");
				}
				document.getElementById(cityName).style.display = "block";
				evt.currentTarget.className += " active";
			}
		</script>

	</center>

	<%@include file="footer.jsp"%>
</body>
</html>