<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<%@include file="welcome.jsp"%>
<br>
<br>
<br>
<br>
<br>
	<a href="${pageContext.request.contextPath}/getAllUser"> User Details</a>|
	<a href="${pageContext.request.contextPath}/getAllSupp">Supplier Details</a>|
	<a href="${pageContext.request.contextPath}/getAllCat">Category Details</a>|
	<a href="${pageContext.request.contextPath}/getAllProduct">Product Details</a>|
	<br>
	<br>
	<br>
<%-- 	<!--<center>
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

					Product Name : <input type="text" name="pname" required/><br>
					<br> Product Description : <input type="text" name="desc" required/><br>
					<br> Product Price : <input type="number" name="price" required/><br>
					<br> Product Stock : <input type="number" name="stock" required/><br>
					<br> Category List:<select name="cat" required>
						<option>-----Category List----</option>		
						<% for(Category c:category){%>
						
						<option value="<%=c.getCid()%>"><%=c.getCname() %></option>		
						
						<%} %>

					</select> Supplier List:<select name="sup" required>
						<option>-----Supplier List----</option>
					   <% for(Supplier s:suppliers){ %>
					   
					   <option value="<%=s.getSid()%>"><%=s.getSname() %></option>
					   <%} %>
					</select><br>
					<br> Image File: <input type="file" name="file" required/> 
					<!-- <inputtype="submit" value="Upload File" /> <br> <br> -->
					
					
					
			<!-- 		<input type="submit" value="insert" />

				</form> -->

	


			<!-- <@page import="java.util.*" %>

<% List<String> ll=(List<String>)request.getSession().getAttribute("categoryName");

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
	
	<%} %>

</select><br><br>


<input type="submit" value="insert"/>

</form>-->


		</div>

		<script>
			/*function openCity(evt, cityName) {
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
			}*/
		</script>

	</center> --%>
	
	<center>
	<table>
	<div class="container">
   <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#home">PRODUCT</a></li>
      <li><a data-toggle="pill" href="#menu2">CATEGORY</a></li>
    <li><a data-toggle="pill" href="#menu3">SUPPLIER</a></li>
  </ul>
  
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
 
 	<form action="insertProdData" method="post" enctype="multipart/form-data">
 	
 	<%
	List<Supplier> suppliers=(List<Supplier>) request.getAttribute("suppliers");
List<Category> category=(List<Category>)request.getAttribute("categories");
	

%>

				Product Name : <input type="text" name="pname" required/><br>
					<br> Product Description : <input type="text" name="desc" required/><br>
					<br> Product Price : <input type="number" name="price" required/><br>
					<br> Product Stock : <input type="number" name="stock" required/><br>
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

<input type="submit" value="insert" />
 	</form>
    </div>
        <div id="menu2" class="tab-pane fade">
     <%@include file="category.jsp" %>
    </div>
    <div id="menu3" class="tab-pane fade">
    <%@include file="supplier.jsp" %>
    </div>
  </div>
</div>
</center>

	<%@include file="footer.jsp"%>
</body>
</html>