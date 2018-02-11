
<%@include file="header.jsp" %>
<br>
<br>
<br>
<br>
<br>

<!-- <center>
<form action="login">

USERNAME : <input type="text" name="un"><br><br>

PASSWORD : <input type="password" name="pwd"><br><br>

<input type="submit" value="SIGNIN">
</form>
</center>-->

<div class="container">
 
<!--   <form action="login">
 -->   
 
 <form action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
  <div class="form-group">
      <label for="name">EMAIL:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter Email" name="un">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
       <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
       <button type="submit" class="btn btn-default">Submit</button>
       
  </form>
</div>




<%@include file="footer.jsp" %>
</body>

