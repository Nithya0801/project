<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>


<%@include file="header.jsp"%>

<br>
<br>
<br>
<br>
<style>
body {
	-webkit-font-smoothing: antialiased;
	text-rendering: optimizeLegibility;
	font-family: 'Roboto Condensed', sans-serif;
	letter-spacing: 0px;
	font-size: 16px;
	color: #848687;
	font-weight: 400;
	line-height: 30px;
	background-color: #f3f5f7;
}

h1, h2, h3, h4, h5, h6 {
	color: #1c1e1e;
	margin: 0px 0px 15px 0px;
	font-weight: 400;
	font-family: 'Roboto Condensed', sans-serif;
}

h1 {
	font-size: 30px;
	line-height: 42px;
}

h2 {
	font-size: 24px;
	line-height: 32px;
}

h3 {
	font-size: 22px;
	line-height: 30px;
}

h4 {
	font-size: 18px;
	line-height: 26px;
}

h5 {
	font-size: 14px;
	font-weight: 400;
}

h6 {
	font-size: 12px;
	font-weight: 400;
}

p {
	margin: 0 0 24px;
	line-height: 1.8;
}

p:last-child {
	margin: 0px;
}

ul, ol {
	list-style: none;
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
	color: #1c1e1e;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	transition: all 0.3s;
}

a:focus, a:hover {
	text-decoration: none;
	color: #fb730f;
}

.alignright {
	float: right;
	margin: 0px 0 20px 30px;
}

.alignleft {
	float: left;
	margin: 0px 20px 0px 0;
}

.showcase-block {
	margin-bottom: 30px;
	min-height: 300px;
	background-color: #e8eaec;
	padding: 30px 30px 0px 30px;
	text-align: center;
}

.showcase-img {
	padding-top: 18px;
}

.display-logo {
	margin-bottom: 30px;
}

.showcase-block:hover {
	background-color: #fff;
	-webkit-box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.10);
	box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.10);
}

.showcase-block.active {
	background-color: #fff;
	-webkit-box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.10);
	box-shadow: 0px 4px 14px 0px rgba(0, 0, 0, 0.10);
}
</style>
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





<div class="col-md-6">

	<div class="row carousel-holder">

		<div class="col-md-9">
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
						<img class="slide-image" src="./resources/ii2.jpg" alt=""
							style="width: 550px; height: 350px; margin: 0 auto">
					</div>
					<div class="item">
						<img class="slide-image" src="./resources/ii.jpg" alt=""
							style="width: 550px; height: 350px; margin: 0 auto">
					</div>
					<div class="item">
						<img class="slide-image" src="./resources/ii1.jpg" alt=""
							style="width: 550px; height: 350px; margin: 0 auto">
					</div>
					<div class="item">
						<img class="slide-image" src="./resources/ii3.jpg" alt=""
							style="width: 550px; height: 350px; margin: 0 auto">
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
			</div>
		</div>
	</div>
</div>



<div class="space-medium">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<div class="showcase-block">
					<div class="display-logo alignleft ">
						<img src="./resources/vivo_logo.jpg" width="40" height="40">
						<a href="#"> <img src="./resources/f1.jpg" alt=""></a>
					</div>
					<div class="showcase-img">

						<img
							src="https://easetemplate.com/free-website-templates/mobistore/images/iphone.png">
						<a href="#"> <img src="./resources/f2.jpg" alt=""></a>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<div class="showcase-block active">
					<div class="display-logo alignleft">
						<a href="#"> <img src="./resources/f3.jpg" alt="">
						</a>
					</div>
					<div class="showcase-img">
						<a href="#"> <img src="./resources/f4.jpg" alt=""
							style="padding-left: 80px;"></a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<div class="showcase-block ">
					<div class="display-logo alignleft ">
						<a href="#"> <img src="./resources/f4.jpg" alt="">
						</a>
					</div>
					<div class="showcase-img">
						<a href="#"><img src="./resources/f5.jpg" alt=""> </a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="showcase-block">
					<div class="display-logo ">
						<a href="#"><img
							src="https://easetemplate.com/free-website-templates/mobistore/images/htc.png"
							alt=""></a>
					</div>
					<div class="showcase-img">
						<a href="#"><img
							src="https://easetemplate.com/free-website-templates/mobistore/images/display_img_4.png"
							alt=""></a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="showcase-block">
					<div class="display-logo">
						<a href="#"> <img
							src="https://easetemplate.com/free-website-templates/mobistore/images/alcatel.png"
							alt=""></a>
					</div>
					<div class="showcase-img">
						<a href="#"> <img
							src="https://easetemplate.com/free-website-templates/mobistore/images/display_img_5.png"
							alt="">
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="showcase-block">
					<div class="display-logo ">
						<a href="#"><img
							src="https://easetemplate.com/free-website-templates/mobistore/images/pixel.png"
							alt=""></a>
					</div>
					<div class="showcase-img">
						<a href="#"> <img
							src="https://easetemplate.com/free-website-templates/mobistore/images/display_img_6.png"
							alt=""></a>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="showcase-block">
					<div class="display-logo ">
						<a href="#"> <img
							src="https://easetemplate.com/free-website-templates/mobistore/images/vivo.png"
							alt=""></a>
					</div>
					<div class="showcase-img">
						<a href="#"><img
							src="https://easetemplate.com/free-website-templates/mobistore/images/display_img_7.png"
							alt=""></a>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12  text-center">
				Created for <a href="https://goo.gl/mwiEhG" target="_blank">easetemplate</a>
			</div>
		</div>
	</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
