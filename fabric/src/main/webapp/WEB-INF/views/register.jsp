<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>

	<div class="container">

		<form action="store">

			<div class="form-group">
				<label for="name">Name :</label> <input type="text"
					class="form-control" id="pwd" placeholder="Enter Name" name="un">
			</div>

			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password"
					name="pwd">
			</div>


			<div class="form-group">
				<label for="address">Address : </label> <input type="text"
					class="form-control" id="pwd" placeholder="Enter Address"
					name="addr">
			</div>

			<div class="form-group">
				<label for="phone">Phone :</label> <input type="text"
					class="form-control" id="pwd" placeholder="Enter Phone"
					name="phone">
			</div>

			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" placeholder="Enter email"
					name="mail">
			</div>

			<div class="form-group">
				<label for="country">Country :</label> <input type="text"
					class="form-control" id="pwd" placeholder="Enter Country"
					name="country">
			</div>
			<button type="submit" class="btn btn-default">REGISTER</button>
		</form>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>