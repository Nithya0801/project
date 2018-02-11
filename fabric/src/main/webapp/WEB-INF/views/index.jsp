<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


<%@include file="header.jsp" %>



<!-- <div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

<br>
<br>
<br>
    Wrapper for slides
    <div class="carousel-inner">
      <div class="item active">
      <img src="./resources/ii2.jpg" alt="shopping1" style="max-width:900px; max-height:600px !important;"/>
       
      </div>

      <div class="item">
       <img src="./resources/ii.jpg" alt="shopping2" style="max-width:900px; max-height:600px !important;"/>
      </div>
    
      <div class="item">
       <img src="./resources/ii1.jpg" alt="shopping3" style="max-width:900px; max-height:600px !important;"/>
      </div>
      
          <div class="item">
       <img src="./resources/ii3.jpg" alt="shopping4" style="max-width:900px; max-height:600px !important;"/>
      </div>
    
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
</div>
 -->





	<div class="col-md-9">

		<div class="row carousel-holder">

			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-

example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-

example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-

example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-

example-generic" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">

						<div class="item active">
							<img class="slide-image" src="./resources/ii2.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="./resources/ii.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="./resources/ii1.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="./resources/ii3.jpg" alt="">
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-

chevron-left"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-

chevron-right"></span>
					</a>

					<%@include file="footer.jsp"%>
</body>
</html>
