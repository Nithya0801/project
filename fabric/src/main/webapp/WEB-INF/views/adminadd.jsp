<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
<%@page import="com.project.Model.*"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<body>

	<%@page import="com.project.Model.User"%>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>


	<center>
		<table>
			<div class="container">
				<ul class="nav nav-pills">
					<li class="active"><a data-toggle="pill" href="#home">PRODUCT</a></li>
					<li><a data-toggle="pill" href="#menu2">CATEGORY</a></li>
					<li><a data-toggle="pill" href="#menu3">SUPPLIER</a></li>
				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<form:form
							action="${pageContext.request.contextPath}/admin/insertProdData"
							method="post" enctype="multipart/form-data" modelAttribute="product">

							<%
								List<Supplier> suppliers = (List<Supplier>) request.getAttribute("suppliers");
								List<Category> category = (List<Category>) request.getAttribute("categories");
							%>

							Product Name : <input type="text"  name="pname" required /><br>
							<br> Product Description : <input type="text" name="desc" required /><br> <br>
							 Product Price : <input	type="number" name="price" required /><br> <br>
							Product Stock : <input type="number" name="stock" required /><br>
							<br> Category List:<select name="cat" required>
								<option>-----Category List----</option>
								<%
									for (Category c : category) {
								%>

								<option value="<%=c.getCid()%>"><%=c.getCname()%></option>

								<%
									}
								%>

							</select> Supplier List:<select name="sup" required>
								<option>-----Supplier List----</option>
								<%
									for (Supplier s : suppliers) {
								%>

								<option value="<%=s.getSid()%>"><%=s.getSname()%></option>
								<%
									}
								%>
							</select><br> Image File: <input type="file" name="file" required />
							<br> <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input type="submit" value="insert" />
						</form:form>
					</div>
					<div id="menu2" class="tab-pane fade">
						<%@include file="category.jsp"%>
					</div>
					<div id="menu3" class="tab-pane fade">
						<%--  <%@include file="supplier.jsp" %> --%>
						<div class="container">
							<form
								action="${pageContext.request.contextPath}/admin/insertData">

								SUPPLIERID : <input type="number" name="sid" required><br>
								<br> SUPPLIERNAME : <input type="text" name="sname"
									required><br>
								<br> <input type="submit" name="option" value="Insert">
								&nbsp;&nbsp; <input type="reset" name="option" value="Cancel">



							</form>

						</div>


					</div>
				</div>
			</div>
			</center>

			<%@include file="footer.jsp"%>
</body>
</html>