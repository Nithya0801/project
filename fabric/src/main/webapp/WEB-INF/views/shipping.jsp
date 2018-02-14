
<%@include file="header.jsp"%>
<br>
<br>
<br>
<br>
<body>
	<h5>

		${aaa}
		<section class="content">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<h3>User Details</h3>
						<hr>
						<c:forEach var="c" items="${userDet}">
							<address>
								<strong>Name:</strong>${c.name }<br> <strong>Email:</strong>${c.email }<br>
								<strong>Address:</strong> ${c.address }<br> <strong>Phone:</strong>${c.phone }<br>
								<strong>Country:</strong>${c.country}<br> <strong>Total
									Price :</strong>${tot}
							</address>

						</c:forEach>
					</div>

					<!-- <h3>Enter Card Details</h3> -->
					<!-- <div class="col-sm-8 contact-form">
<form id="contact" method="post" class="form" role="form">
<div class="row">
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="name" name="name" placeholder="Name" type="text" required autofocus />
</div>
<div class="col-xs-6 col-md-6 form-group">
<input class="form-control" id="email" name="email" placeholder="Email" type="email" required />
</div>
</div>
<textarea class="form-control" id="message" name="message" placeholder="Message" rows="5"></textarea>
<br />
<div class="row">
<div class="col-xs-12 col-md-12 form-group">
<button class="btn btn-primary pull-right" type="submit">Submit</button>
</form>
</div>
</div> -->

					<!-- <div class="container">
	<div class="row">
        <div class="span8">
    		<form action="billing" method="post" class="form-horizontal" id="billingform" accept-charset="utf-8">
    			<div class="control-group">
    				
    					<div class="controls">
    					<select name="mode">
    					<option value="nb">NetBanking</option>
    					<option value="cc">CreditCard</option>
    					<option value="dc">DebitCard</option>
    					<option value="cod">COD</option>
    					</select>
    					</div>
    			</div>
     	<br>
    			<div class="control-group">
    				
    				<div class="controls"><input name="cno" placeholder="card number" type="number" value="" >
    				</div>
    			</div>
     <br>
    			<div class="control-group">
    				
    				<div class="controls"><input name="cardname" type="text" value=""  placeholder="card Name">
    				</div>
    			</div>
     <br>
    			<div class="control-group">
    				
    				<div class="controls"><input name="cpass" type="text" value="" placeholder="pass"></div>
    				</div><br>
    				<div class="control-group">
    				
    				<div class="controls"><input name="cpass" size="4" type="number" value="" placeholder="ExpiryDate"></div>
    					<div class="controls"><input name="cpass" size="4" type="number" value="" placeholder="ExpiryDate"></div>
    				</div><br>
    			</div> -->

					<div class="container">
						<div class="row">
							<div class="col-md-5">
								<div class="form_main">
									<h4 class="heading">
										<strong>Payment Details </strong><span></span>
									</h4>
									<div class="form">
										<form action="${pageContext.request.contextPath}/goToOrder"
											method="get" id="contactFrm" name="contactFrm">
											<input type="hidden" name="tot" value="${tot}" /> <select
												name="mode" required>
												<option value="none">select...</option>
												<option value="nb">NetBanking</option>
												<option value="cc">CreditCard</option>
												<option value="dc">DebitCard</option>
												<option value="cod">COD</option>
											</select><br>
											<br> <input name="cno" placeholder="card number"
												type="number" value=""><br>
											<br> <input name="cardname" type="text" value=""
												placeholder="Name on the Card"><br>
											<br> <input name="cpass" type="text" value=""
												placeholder="password"><br>
											<br> Expiry Date &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
											&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;CVV<br>
											<input name="cpass" type="date" value=""
												placeholder="ExpiryDate"> <input name="cpass"
												type="number" maxlength="3"> <br>
											<br> <input type="submit" value="Place Order"
												style="font-size: 7pt; color: white; background-color: green; border: 2px solid #336600; padding: 3px"
												name="submit" class="txt2">
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
		</section>
	</h5>
</body>
<%@include file="footer.jsp"%>