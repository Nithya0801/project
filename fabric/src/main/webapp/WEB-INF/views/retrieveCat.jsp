
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
						<th>CATEGORY ID</th>
						<th>CATEGORY NAME</th>
						<th>EDIT</th>
						<th>DELETE</th>
					</tr>
				</thead>
				<tbody>
					<%
						List<Category> l = (List<Category>) request.getSession().getAttribute("obj2");
						for (Category u : l) {
					%>


					<tr>
						<td><%=u.getCid()%></td>
						<td><%=u.getCname()%></td>
						<td><a
							href="${pageContext.request.contextPath}/admin/updateCat?cid=<%=u.getCid()%>"><i
								class="fa fa-edit"></i></a></td>
						<td><a
							href="${pageContext.request.contextPath}/admin/deleteCat?cid=<%=u.getCid()%>"><i
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