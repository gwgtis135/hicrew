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
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

ul, li {
	list-style: none;
}

a {
	text-decoration: none
}

#history {
	width: 1200px;
	margin: 0 auto;
}

#history h2 {
	text-align: center;
	font-size: 24px;
	color: #444;
	line-height: 1;
	margin-top: 30px;
}

.list_right {
	display: table;
	width: 100%;
	table-layout: fixed;
}

.list_right span {
	display: table-cell;
	vertical-align: top;
}

.list_right div {
	position: relative;
	display: table-cell;
	vertical-align: top;
}

.list_right div:before {
	content: "";
	position: absolute;
	left: 0;
	width: 1px;
	height: 100%;
	background: #dfdfdf;
}

.list_right div ul {
	margin-top: 20px;
}

.list_right div ul li {
	display: table;
	position: relative;
	width: 100%;
	padding-left: 20px;
}

.list_right div ul li+li {
	margin-top: 20px;
}

.list_right div ul li:before {
	content: "";
	position: absolute;
	left: -8px;
	top: 7px;
	width: 12px;
	height: 12px;
	border: 3px solid #0a4a9f;
	border-radius: 50%;
}

.list_right dl {
	text-align: left;
	display: table;
	width: 100%;
}

.list_right dl dt {
	width: 10%;
	display: table-cell;
	vertical-align: middle;
	font-size: 20px;
	color: #444;
	font-weight: bold;
	text-align: left;
}

.list_right dl dd {
	width: 90px;
	display: table-cell;
	vertical-align: middle;
	font-size: 20px;
	color: #444;
	text-align: left;
}

.list_left {
	display: table;
	width: 100%;
	table-layout: fixed;
}

.list_left span {
	display: table-cell;
	vertical-align: top;
}

.list_left div {
	position: relative;
	display: table-cell;
	vertical-align: top;
}

.list_left div:before {
	content: "";
	position: absolute;
	right: -1px;
	width: 1px;
	height: 100%;
	background: #dfdfdf;
}

.list_left div ul {
	margin-top: 20px;
}

.list_left div ul li {
	display: table;
	position: relative;
	width: 100%;
	padding-left: 20px;
}

.list_left div ul li+li {
	margin-top: 20px;
}

.list_left div ul li:before {
	content: "";
	position: absolute;
	right: -10px;
	top: 7px;
	width: 12px;
	height: 12px;
	border: 3px solid #0a4a9f;
	border-radius: 50%;
}

.list_left dl {
	text-align: right;
	display: table;
	width: 100%;
	padding-right: 20px;
}

.list_left dl dt {
	width: 10%;
	display: table-cell;
	vertical-align: middle;
	font-size: 20px;
	color: #444;
	font-weight: bold;
	text-align: right;
}

.list_left dl dd {
	width: 90px;
	display: table-cell;
	vertical-align: middle;
	font-size: 20px;
	color: #444;
	text-align: right;
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
		console.log(url)
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
							<h2>회사 연혁</h2>
							<p>교육정보화시스템 구축 및 운영 전문 기업 하이크루의 도전 </p>
					</div>
				</div>
				<div class="row">
						<div id="history">
							<h2>2019</h2>
							<div class="list_right">
								<span></span>
								<div>
									<ul>
										<li>
											<dl>
												<dt>11.24</dt>
												<dd>on sunday 티스토리 블로그 개설</dd>
											</dl>
											<dl>
												<dt>11.24</dt>
												<dd>첫 포스팅 시작함</dd>
											</dl>
										</li>
										<li>
											<dl>
												<dt>11.25</dt>
												<dd>on sunday 바람개비마을 포스팅</dd>
											</dl>
											<dl>
												<dt>11.26</dt>
												<dd>서촌 준수방키친 포스팅</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
							<!--list_right-->
							<h2>2019</h2>
							<div class="list_left">
								<div>
									<ul>
										<li>
											<dl>
												<dd>on sunday 티스토리 블로그 개설</dd>
												<dt>11.24</dt>
											</dl>
											<dl>
												<dd>첫 포스팅 시작함</dd>
												<dt>11.24</dt>
											</dl>
										</li>
										<li>
											<dl>
												<dd>on sunday 바람개비마을 포스팅</dd>
												<dt>11.25</dt>
											</dl>
											<dl>
												<dd>서촌 준수방키친 포스팅</dd>
												<dt>11.26</dt>
											</dl>
										</li>
									</ul>
								</div>
								<span></span>
							</div>
							<!--list_right-->
						</div>
						<!--history-->

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