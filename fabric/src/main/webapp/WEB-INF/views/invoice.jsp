<%@include file="header.jsp"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<br>
<br>
<br>
<body>
	<%
		SimpleDateFormat formatter = new SimpleDateFormat("dd-02-yyyy");
		String str = formatter.format(new Date());
	%>
	<div
		style="margin: 5% 40% 0% 33%; float: left; width: 450px; box-shadow: 0 0 5px #aaa; height: auto; color: #666;">
		<div
			style="width: 100%; padding: 5px; float: left; background: #1ca8dd; color: #fff; font-size: 30px; text-align: center;">
			Invoice</div>
		<div
			style="width: 100%; padding: 0px 0px; border-bottom: 1px solid rgba(0, 0, 0, 0.2); float: left;">
			<div style="width: 30%; float: left; padding: 10px;">
				<c:forEach var="u" items="${userdetail}">
					<span style="font-size: 14px; float: left; width: 100%;">
						${u.name} </span>
					<span style="font-size: 14px; float: left; width: 100%;">
						${u.address } </span>
					<span style="font-size: 14px; float: left; width: 100%;">
						${u.phone } </span>
					<span style="font-size: 14px; float: left; width: 100%;">
						${u.email } </span>
				</c:forEach>
			</div>

			<div style="width: 40%; float: right; padding:">
				<span
					style="font-size: 14px; float: right; padding: 10px; text-align: right;">
					<b>Date : </b><%=str%>
				</span>

			</div>
		</div>





		<div style="width: 100%; padding: 0px; float: left;">

			<div style="width: 100%; float: left; background: #efefef;">
				<span
					style="float: left; text-align: left; padding: 10px; width: 50%; color: #888; font-weight: 600;">
					Product </span> <span
					style="font-weight: 600; float: left; padding: 10px; width: 40%; color: #888; text-align: right;">
					Amount </span>
			</div>

			<div style="width: 100%; float: left;">
				<c:forEach var="p" items="${invo}">
					<span
						style="float: left; text-align: left; padding: 10px; width: 50%; color: #888;">
						${p.cartProductName } </span>

					<span
						style="font-weight: normal; float: left; padding: 10px; width: 40%; color: #888; text-align: right;">
						<c:set var="s" value="${p.cartPrice * p.cartQuantity}" />${s}
					</span>
			</div>
			<c:set var="tot" value="${tot+s}" />
			</c:forEach>
		</div>

		<div style="width: 100%; float: left; background: #fff;">

			<span
				style="font-weight: 600; float: right; padding: 10px 0px; width: 60%; color: #666; text-align: center;">
				Total : ${tot } </span>
		</div>
		<form action="${pageContext.request.contextPath}/thank">
			<input type="submit" value="OK" align="center"
				style="margin-left: 50%" style="height:100px; width:50px" />
		</form>

	</div>


	<br>

</body>
