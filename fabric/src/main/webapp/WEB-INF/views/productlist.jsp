<body></body>

<%@include file="header.jsp" %>
<br>
<br>
<br>
<h4>ProductList</h4>
<div class="container">
<table class="table table-bordered">
<thead>
<tr><th>ProductName</th>
<th>ProductDesc</th>
<th>Stock</th>
<th>Price</th>
<th>Image</th>
</tr>
</thead>
<tbody>
<c:forEach var="l" items="${list}">
<tr>
<td>${l.pname }</td>
<td>${l.desc }</td>
<td>${l.stock }</td>
<td>${l.price }</td>
<td><img src="./resources/${l.imgname}"  width="80" height="52"/></td>

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
<%@include file="footer.jsp" %>
</body>
