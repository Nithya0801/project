
<body>
	<%@page import="java.util.*"%>
	<%@page import="com.project.Model.*"%>

	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<center>

		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>PASSWORD</th>
						<th>ADDRESS</th>
						<th>COUNTRY</th>
						<th>EMAIL</th>
						<th>PHONE</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<User> l = (List<User>) request.getSession().getAttribute("value");
						for (User u : l) {
					%>


					<tr>
						<td><%=u.getId()%></td>
						<td><%=u.getName()%></td>
						<td><%=u.getPwd()%></td>
						<td><%=u.getAddress()%></td>
						<td><%=u.getCountry()%></td>
						<td><%=u.getEmail()%></td>
						<td><%=u.getPhone()%></td>
					</tr>

					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</center>
	<form action="${pageContext.request.contextPath}/admin/adminadd">
		<input type="submit" value="back">
	</form>
	<%@include file="footer.jsp"%>
</body>
</html>