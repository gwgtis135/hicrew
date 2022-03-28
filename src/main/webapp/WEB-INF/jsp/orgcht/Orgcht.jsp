<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>하이크루</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by hicrew.co" />
	<meta name="keywords" content="하이크루, hicrew, it, hicrew, highcrew" />
	<meta name="author" content="hicrew.co" />
  	<!-- Facebook and Twitter integration -->
	 <meta property="og:type" content="website">
	 <meta property="og:title" content="하이크루">
	 <meta property="og:description" content="하이크루 홈페이지">
	 <meta property="og:image" content="http://www.hicrew.kr/myimage.jpg">
	 <meta property="og:url" content="http://www.hicrew.kr">
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->
	<link rel="canonical" href="http://www.hicrew.kr">
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	
	
	<style type="text/css">
	/*Now the CSS*/
* {margin: 0; padding: 0;}

.tree
{
	width: auto;

	margin-left: auto;
	margin-right: auto;
}

.tree ul {
	padding-top: 20px; position: relative;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

.tree li {
	float: left; text-align: center;
	list-style-type: none;
	position: relative;
	padding: 20px 5px 0 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*We will use ::before and ::after to draw the connectors*/

.tree li::before, .tree li::after{
	content: '';
	position: absolute; top: 0; right: 50%;
	border-top: 1px solid #ccc;
	width: 50%; height: 20px;
}
.tree li:after{
	right: auto; left: 50%;
	border-left: 1px solid #ccc;
}

/*We need to remove left-right connectors from elements without 
any siblings*/
.tree li:only-child::after, .tree li:only-child::before {
	display: none;
}

/*Remove space from the top of single children*/
.tree li:only-child{ padding-top: 0;}

/*Remove left connector from first child and 
right connector from last child*/
.tree li:first-child::before, .tree li:last-child::after{
	border: 0 none;
}
/*Adding back the vertical connector to the last nodes*/
.tree li:last-child::before{
	border-right: 1px solid #ccc;
	border-radius: 0 5px 0 0;
	-webkit-border-radius: 0 5px 0 0;
	-moz-border-radius: 0 5px 0 0;
}
.tree li:first-child::after{
	border-radius: 5px 0 0 0;
	-webkit-border-radius: 5px 0 0 0;
	-moz-border-radius: 5px 0 0 0;
}

/*Time to add downward connectors from parents*/
.tree ul ul::before{
	content: '';
	position: absolute; top: 0; left: 50%;
	border-left: 1px solid #ccc;
	width: 0; height: 20px;
    margin-left: -1px;
}

.tree li a{
	border: 1px solid #ccc;
	padding: 5px 10px;
	text-decoration: none;
	color: #666;
	font-family: arial, verdana, tahoma;
	font-size: 11px;
	display: inline-block;
	
	border-radius: 5px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	
	transition: all 0.5s;
	-webkit-transition: all 0.5s;
	-moz-transition: all 0.5s;
}

/*Time for some hover effects*/
/*We will apply the hover effect the the lineage of the element also*/
.tree li a:hover, .tree li a:hover+ul li a {
	background: #c8e4f8; color: #000; border: 1px solid #94a0b4;
}
/*Connector styles on hover*/
.tree li a:hover+ul li::after, 
.tree li a:hover+ul li::before, 
.tree li a:hover+ul::before, 
.tree li a:hover+ul ul::before{
	border-color:  #94a0b4;
}

li a.just-line {
    display: none;
}
a.just-line + ul {
	padding-top: 74px;
}
a.just-line + ul:before {
	height: 74px;
}
</style>

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function(){
		    $(".menu>a").click(function(){
		    	console.log('클릭됨 !!')
	
		        $(this).next("ul").toggleClass("hide");
		        $(this).next("ul").toggleClass("show");
		    });
		});
	
	function movePage(url){
		console.log('a태그 함수 실행완료')
		location.href=url;
	}
	</script>

</head>
<body onload="initialize()">
	<div class="gtco-loader"></div>
	
	<div id="page">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			<div class="row">
				<div class="col-sm-2 col-xs-12">
					<div id="gtco-logo"><img src="images/logo.png" alt="(주)하이크루"/></div>
				</div>
				<div class="col-xs-10 text-right menu-1 main-nav">
					<ul>
						<li class="active"><a href="#" data-nav-section="home">Home</a></li>
						<li class = "menu"><a href="#" data-nav-section="services">회사소개</a>
							<ul class = "hide">
								<li><a href="#" onclick="movePage('ch.do')" data-nav-section="#companyHistory">연혁</a>
								<li><a href="#" >연혁 관리</a>
								<li><a href="#" onclick="movePage('orgcht.do')">조직도</a>
								<li><a href="#" >조직도 관리</a>
							</ul>
						</li>
						<li><a href="#" onclick="movePage('main.do?data'+'=CI')" data-nav-section="CI">CI소개</a></li>
						<li><a href="#" onclick="movePage('main.do?data'+'=portfolio')" data-nav-section="portfolio">PDF솔루션</a></li>
						<li><a href="#" onclick="movePage('main.do?data'+'=blog')" data-nav-section="blog">IT솔루션</a></li>
						<li><a href="#" onclick="movePage('main.do?data'+'=products')" data-nav-section="products">포토스토리</a></li>
						<li><a href="#" onclick="movePage('main.do?data'+'=contact')" data-nav-section="contact">오시는길</a></li>
						<li><a href="http://gw.hicrew.kr" class="external">그룹웨어</a></li> 
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	
		<div class="gtco-section-overflow">

		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
							<h2>조직도</h2>
					</div>
				</div>
				<div class="row">
						<div class="tree">
	<ul>
		<li>
			
            <a href="#"><img alt="" src="images/logo.png"><br/>President Director <br/>Tetsuo Nakai</a>
            
			<ul>
				<li>
					<a href="#">
                        HR &amp; Administration<br/>
                        Heli Neo<br/>Manager</a>
					<ul>
						<li>
                            <a href="#">IT Administrator <br/>Ericson Ginting<br/>Assistant Manager</a>
							
							<ul>
								<li>
                                    <a href="#">IT Engineer <br/>I Wayan Purushottama<br/>Engineer</a>
									
									<ul>
									<li>
                                        <a href="#">IT Support<br/>Juanda F Butar Butar<br/>Assistant Engineer</a>
									</li>
									</ul>
								</li>
								
								<li>
                                    <a href="#" class="just-line"><br/><br/><br/></a>
								<ul>
								<li>
                                    <a href="#">IT Support<br/>David Alwis<br/>Assistant Engineer</a>
									
									<ul>
									<li>
                                        <a href="#">IT Support<br/>Nico Simanjuntak<br/>Technician</a>
									</li>
									</ul>
								</li>
								</ul>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				
			</ul>
		</li>
	</ul>
</div>

					</div>
			</div>
		</div>

</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
	<script>

	var stockholm = new google.maps.LatLng(35.878816, 128.730657);
	var parliament = new google.maps.LatLng(35.878816, 128.730657);
	var marker;
	var map;

	function initialize() {
	  var mapOptions = {
	    zoom: 15,
	    mapTypeId: google.maps.MapTypeId.ROADMAP,
	    center: stockholm
	  };

	  map = new google.maps.Map(document.getElementById("map_view"),
	      mapOptions);

	  marker = new google.maps.Marker({
	    map:map,
	    draggable:true,
	    animation: google.maps.Animation.DROP,
	    position: parliament
	  });
	  google.maps.event.addListener(marker, 'click', toggleBounce);
	}

	function toggleBounce() {

	  if (marker.getAnimation() != null) {
	    marker.setAnimation(null);
	  } else {
	    marker.setAnimation(google.maps.Animation.BOUNCE);
	  }
	}	
 </script>
</body>
</html>