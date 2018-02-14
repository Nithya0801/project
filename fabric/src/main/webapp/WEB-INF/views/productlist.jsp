<body></body>

<%@include file="header.jsp"%>
<br>
<br>
<br>
<Center>
	<h4>ProductList</h4>
</Center>
<div class="container">



	<table class="table table-striped" border="1">
		<thead>
			<tr>
				<th>Product Id</th>
				<th>ProductName</th>
				<th>ProductDesc</th>
				<th>Category</th>
				<th>Supplier</th>
				<th>Stock</th>
				<th>Price</th>
				<th>Image</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="l" items="${list}">
				<tr>
					<td>${l.pid}</td>
					<td>${l.pname }</td>
					<td>${l.desc }</td>
					<td>${l.category.cname }</td>
					<td>${l.supplier.sname }</td>
					<td>${l.stock }</td>
					<td>${l.price }</td>
					<td><img src="./resources/${l.imgname}" width="80" height="52" /></td>
					<td><a
						href="${pageContext.request.contextPath}/proDetail?pid=${l.pid}"><Button
								span="2">Details</Button></a></td>
				</tr>

			</c:forEach>
			<tr>
			</tr>
		</tbody>
	</table>
</div>
<br>
<br>
<br>
<%@include file="footer.jsp"%>
</body>
