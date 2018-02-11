<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*" %>
<%@page import="com.project.Model.*" %>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head> -->
<body>

	<%@page import="com.project.Model.User"%>
	<%@include file="header.jsp"%>
<br>
<br>
<br>
<br>
<br>
	
	
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
 <div class="container">
 	<form action="${pageContext.request.contextPath}/admin/insertProdData" method="post" enctype="multipart/form-data">
 	
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
					 Image File: <input type="file" name="file" required/> <br>
 <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
 
<input type="submit" value="insert" />
 	</form>
 	</div>
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