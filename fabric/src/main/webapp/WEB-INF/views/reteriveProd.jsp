
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
						<th colspan="3">Product List</th>
						<th colspan="5">
							<div class="search-container">
								<form action="${pageContext.request.contextPath}/admin/search">
									<input type="text" placeholder="Search.." name="search">
									<button type="submit">
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>

						</th>
					</tr>
					<tr>

						<th>Product Name</th>
						<th>Description</th>
						<th>Stock</th>
						<th>Price</th>
						<th>Category</th>
						<th>Image</th>
						<th colspan="3">Action</th>
					</tr>
				</thead>
				<tbody>
					<%-- <%
List<Product> lp=(List<Product>)request.getSession().getAttribute("getPro");
String fn=(String)request.getSession().getAttribute("filename");

for(Product p:lp)
{
%>

<tr>
<td><%=p.getPid() %></td>
<td><%=p.getPname() %></td>
<td><%=p.getDesc() %></td>
<td><%=p.getStock() %></td>
<td><%=p.getPrice() %></td>
<td><img src="./resources/<%=p.getImgname()%>"/></td>
</tr>

<%} %> --%>

					<c:forEach var="l" items="${list}">
						<tr>
							<td>${l.pname}</td>
							<td>${l.desc}</td>
							<td>${l.stock}</td>
							<td>${l.price }</td>
							<td>${l.category.cname }</td>
							<td><img src="../resources/${l.imgname}" width="42"
								height="42" />
							<td>
								<%-- <td><img src="<c:url value = "../resources/${l.imgname}"/>"/><td> --%>
							<td><a
								href="${pageContext.request.contextPath}/admin/updatePro?pid=${l.pid}"><i
									class="fa fa-edit"></i></a>
							<td><a
								href="${pageContext.request.contextPath}/admin/deletePro?pid=${l.pid}"><i
									class="material-icons">delete</i></a>
						</tr>

					</c:forEach>
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