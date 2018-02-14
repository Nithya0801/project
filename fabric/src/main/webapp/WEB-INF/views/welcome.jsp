<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<%-- <%@include file="header.jsp" %> --%>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">

			<div class="navbar-header">
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#hea">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="hea">
				<ul class="nav navbar-nav navbar-left">
					<li><a>WELCOME : ${message}</a></li>


					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"
						href="${pageContext.request.contextPath}/admin/demo">View List
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="${pageContext.request.contextPath}/admin/getAllUser">User
									Details</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/getAllCat">Category
									Details</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/getAllSupp">Supplier
									Details</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/getAllProduct">Product
									Details</a></li>

						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">


					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>

				</ul>
			</div>
		</div>
	</div>
	<br>
	<br>