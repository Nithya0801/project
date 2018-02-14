<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h5>
		<center>

			<div class="container">
				<form action="${pageContext.request.contextPath}/admin/insertData">

					SUPPLIERID : <input type="number" name="sid" required><br>
					<br> SUPPLIERNAME : <input type="text" name="sname" required><br>
					<br> <input type="submit" name="option" value="Insert">
					&nbsp;&nbsp; <input type="reset" name="option" value="Cancel">



				</form>

			</div>

		</center>

	</h5>
</body>
</html>