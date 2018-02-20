<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

		<form:form action="${pageContext.request.contextPath}/register" modelAttribute="user" method="post">

			<div class="form-group">
				<label for="name">Name :</label> <form:input type="text" path="name"  class="form-control" ></form:input>
					<form:errors path="name" cssStyle="color: #ff0000"/>
			</div>
 
			<div class="form-group">
				<label for="pwd">Password:</label> <form:input type="password" path="pwd"  class="form-control" ></form:input>
					<form:errors path="pwd" cssStyle="color: #ff0000"/>
			</div>


			<div class="form-group">
				<label for="address">Address : </label> <form:input type="text"
					 class="form-control"  path="address" ></form:input><form:errors path="address" cssStyle="color: #ff0000"/>
			</div>

			<div class="form-group">
				<label for="phone">Phone :</label> <form:input type="text"	 class="form-control"  path="phone"></form:input><form:errors path="phone" cssStyle="color: #ff0000"/>
			</div>

			<div class="form-group">
				<label for="email">Email:</label> <form:input type="email"  class="form-control" path="email" ></form:input><form:errors path="email" cssStyle="color: #ff0000"/>
			</div>

			<div class="form-group">
				<label for="country">Country :</label> <form:input type="text"
					 class="form-control"   path="country"></form:input><form:errors path="country" cssStyle="color: #ff0000"/>
			</div>
		<%-- 	<form:button type="submit" class="btn btn-default">REGISTER</form:button> --%>
			<input type="submit" value="Register"/>
		</form:form>
	</div> 

	<%--  <div align="center">
        <h2>Spring MVC Form Validation Demo - Login Form</h2>
        <table border="0" width="90%">
        <form:form action="register" modelAttribute="user">
       		  <tr>
                    <td align="left" width="20%">Name: </td>
                    <td align="left" width="40%"><form:input path="name" size="30"/></td>
                    <td align="left"><form:errors path="name" cssClass="error"/></td>
                </tr><br>
                <tr>
                    <td align="left" width="20%">Password: </td>
                    <td  align="left" width="40%"><form:password path="pwd"  size="30"/></td>
                    <td  align="left"><form:errors path="pwd" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td align="left" width="20%">Address: </td>
                    <td align="left" width="40%"><form:input path="address"  size="30"/></td>
                    <td align="left"><form:errors path="address" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td align="left" width="20%">Phone: </td>
                    <td align="left" width="40%"><form:input path="phone"  size="30"/></td>
                    <td align="left"><form:errors path="phone" cssClass="error"/></td>
                </tr>
                <tr>
                    <td align="left" width="20%">Email: </td>
                    <td align="left" width="40%"><form:input path="email" size="30"/></td>
                    <td align="left"><form:errors path="email" cssClass="error"/></td>
                </tr>
                 <tr>
                    <td align="left" width="20%">Country: </td>
                    <td align="left" width="40%"><form:input path="country" size="30"/></td>
                    <td align="left"><form:errors path="country" cssClass="error"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="submit" value="Login"/></td>
                    <td></td>
                </tr>
        </form:form>
        </table>
    </div> --%>
	<%@include file="footer.jsp"%>
</body>
</html>