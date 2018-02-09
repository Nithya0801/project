<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>

<div class="navbar navbar-inverse navbar-fixed-top">
<div class="container">

<div class="navbar-header">
<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#hea">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>

</div>
<div class="collapse navbar-collapse" id="hea">
<ul class="nav navbar-nav navbar-left">
<li><a>WELCOME : ${message}</a></li>


      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="${pageContext.request.contextPath}/admin/demo">View List <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/admin/getAllUser">User Details</a></li>
          <li><a href="${pageContext.request.contextPath}/admin/getAllCat">Category Details</a></li>
          <li><a href="${pageContext.request.contextPath}/admin/getAllSupp">Supplier Details</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/getAllProduct">Product Details</a></li>
          
        </ul>
      </li>
      </ul>
<ul class="nav navbar-nav navbar-right">


<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>

</ul>
</div>
</div>
</div>
<br>
<br>


</body>
</html>