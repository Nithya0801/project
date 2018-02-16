<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link href="s1.css" rel="stylesheet">

<style>
body {
	font-family: Arial;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<title>Insert title here</title>

</head>

<body>



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

				<body>

					<%-- <ul class="nav navbar-nav navbar-right mr-auto">
      	<c:if test="${pageContext.request.userPrincipal.name == null}">
        	<li><a href="home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        	<li><a href="register">Register</a></li>
        	<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </c:if>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
      		<li> <a>Welcome : ${pageContext.request.userPrincipal.name} </a></li>
        	<li><a href="home"><span class="glyphicon glyphicon-home"></span> Home</a></li>
        	<li><a href="<c:url value="/logout"/>">Logout</a></li>  
        </c:if>  
        
      </ul> --%>


					<ul class="nav navbar-nav navbar-left">


						<li><a href="${pageContext.request.contextPath}/index"
							class="active"><span class="glyphicon glyphicon-home"></span>Home</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/adminadd">Admin</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Category List <span
								class="caret"></span></a>
							<ul class="dropdown-menu">

								<c:forEach var="c" items="${obj}">
									<li><a
										href="${pageContext.request.contextPath}/getCritirea?cid=${c.cid}">${c.cname}</a></li>
								</c:forEach>
							</ul></li>

						<%--      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        		<ul class="dropdown-menu">
        		<c:forEach var="cat" items="${clist}">
        		<li><a href="custProductList?categoryId=${cat.categoryId}">${cat.categoryName}</a></li>
         		</c:forEach> 
        		</ul>
      		</li>
       --%>


					</ul>

					<c:if
						test="${pageContext.request.userPrincipal.name == 'nithya123@gmail.com'}">
						<ul class="nav navbar-nav navbar-right mr-auto">
							<li><a>Welcome :
									${pageContext.request.userPrincipal.name} </a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown"
								href="${pageContext.request.contextPath}/admin/demo">View
									List <span class="caret"></span>
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
							<li><a href="${ pageContext.request.contextPath}/fetchAll">
							<i class="fa fa-shopping-cart">My Cart</i></a></li>
							<%-- <li><a href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home"></span> Home</a></li> --%>
							<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
						</ul>
					</c:if>
					<c:if
						test="${pageContext.request.userPrincipal.name != 'nithya123@gmail.com' && pageContext.request.userPrincipal.name!=null}">
						<ul class="nav navbar-nav navbar-right mr-auto">
							<li><a>Welcome :
									${pageContext.request.userPrincipal.name} </a></li>
							<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
							<li><a href="${ pageContext.request.contextPath}/cart">
							<i class="fa fa-shopping-cart"></i>My Cart</a></li>
						</ul>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<ul class="nav navbar-nav navbar-right mr-auto">
							<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
							<li><a href="${pageContext.request.contextPath}/signin">Signin</a></li>
						</ul>
					</c:if>
					<%--
</ul>


<ul class="nav navbar-nav navbar-right">


<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
 --%>
			</div>
		</div>
	</div>



</body>
</html>





