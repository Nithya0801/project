
<body>
	<%@page import="java.util.*"%>
	<%@page import="com.project.Model.*"%>

	<%@include file="header.jsp"%>
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
						<th>SUPPLIER ID</th>
						<th>SUPPLIER NAME</th>
						<th>EDIT</th>
						<th>DELETE</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<Supplier> l = (List<Supplier>) request.getSession().getAttribute("obj1");
						for (Supplier u : l) {
					%>


					<tr>
						<td><%=u.getSid()%></td>
						<td><%=u.getSname()%></td>


						<td><a
							href="${pageContext.request.contextPath}/admin/updateSupp?sid=<%=u.getSid()%>"><i
								class="fa fa-edit"></i></a></td>
						<td><a
							href="${pageContext.request.contextPath}/admin/deleteSupp?sid=<%=u.getSid()%>"><i
								class="material-icons">delete</i></a></td>

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