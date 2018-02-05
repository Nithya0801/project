<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<br>
<br>
<br>
<br>
<br>

<!-- <center>
<form action="login">

USERNAME : <input type="text" name="un"><br><br>

PASSWORD : <input type="password" name="pwd"><br><br>

<input type="submit" value="SIGNIN">
</form>
</center>-->

<div class="container">
 
  <form action="login">
    <div class="form-group">
      <label for="name">NAME:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Name" name="un">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
       <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>


<%@include file="footer.jsp" %>
</body>
</html>