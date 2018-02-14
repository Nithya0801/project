<%@include file="header.jsp"%>
<br>
<br>
<br>

<div class="container">

	<h3>
		Shopping Cart <img src="./resources/cart.jpg" width="60" height="60" />
	</h3>
	<hr>
	<table class="table table-striped table-hover table-bordered">
		<tbody>
			<tr>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>Price</th>
				<th>Image</th>
				<th>Total</th>
				<th>Action</th>
			</tr>
			<c:set var="tot" value="0" />
			<c:forEach var="c" items="${cdetail}">
				<tr>
					<td>${c.cartProductName }</td>
					<td>${c.cartQuantity }</td>
					<td>${c.cartPrice}</td>
					<td><img src="./resources/${c.cartImage}" width="42"
						height="42" /></td>

					<td><c:set var="s" value="${c.cartPrice * c.cartQuantity}" />${s}</td>
					<td><a
						href="${pageContext.request.contextPath}/deleteCart?cartId=${c.cartId}"><i
							class="material-icons">delete</i></a></td>
					<c:set var="tot" value="${tot+s}" />
				</tr>
			</c:forEach>
			<tr>
				<th colspan="3"><span class="pull-right">Total</span></th>
				<th>${tot}</th>
			</tr>

			<tr>
				<td><a href="${pageContext.request.contextPath}/index"
					class="btn btn-primary">Continue Shopping</a></td>
				<td colspan="3"><a
					href="${ pageContext.request.contextPath}/checkOut?tot=${tot}"
					class="pull-right btn btn-success">Checkout</a></td>
			</tr>
		</tbody>
	</table>

</div>

<%@include file="footer.jsp"%>