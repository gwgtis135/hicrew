<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	Asymmetry by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->


<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>하이크루</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Website Template by hicrew.co" />
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
<!-- Theme style  -->
	<link rel="stylesheet" href="css/jonghyeon_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="css/event_style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
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
<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
<script src="js/scripts.js"></script>
</head>
<body onload="initialize()">

		<div class="gtco-loader"></div>

		<jsp:include page="../main/nav.jsp" >
			<jsp:param name="#" value="#"/>
		</jsp:include>

		<jsp:include page="../main/Tap.jsp">
			<jsp:param name="#" value="#" />
		</jsp:include>

	<div id="page">
		<div class="gtco-section" id="gtco-contact" data-section="contact">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>오시는길</h2>
						<p>
							<em>하이크루</em>는 항상 여러분의 방문을 환영합니다.
						</p>
					</div>
				</div>
				<div class="row">

					<div id="map_view" class="col-md-12"
						style="width: 100%; height: 350px;"></div>
				</div>
			</div>
		</div>


		<footer id="gtco-footer" role="contentinfo">
			<div class="gtco-container">

				<div class="row copyright">
					<div class="col-md-12">
						<p class="pull-left">
							<small class="block">&copy; 대구광역시 동구 첨단로 30 305호(신서동,
								이노빌딩). 대표번호 : 070-8772-1612</small> <small class="block">COPYRIGHT©2018
								BY HCSYSTEM. ALL RIGHTS RESERVED</small>
						</p>
						<!-- 
					<p class="pull-right">
						<ul class="gtco-social-icons pull-right">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
					 -->
					</div>
				</div>

			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>


	<script>
		var stockholm = new google.maps.LatLng(35.878816, 128.730657);
		var parliament = new google.maps.LatLng(35.878816, 128.730657);
		var marker;
		var map;

		function initialize() {
			var mapOptions = {
				zoom : 15,
				mapTypeId : google.maps.MapTypeId.ROADMAP,
				center : stockholm
			};

			map = new google.maps.Map(document.getElementById("map_view"),
					mapOptions);

			marker = new google.maps.Marker({
				map : map,
				draggable : true,
				animation : google.maps.Animation.DROP,
				position : parliament
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
		
		console.log('common.js 실행11111111111')
		var url = location.href;
		console.log(url)
		
		var submenulist = document.querySelectorAll(".sub_menu_lst > li");
		console.log(submenulist)
		for(i in submenulist){
			console.log(submenulist[i])
			var hreflink = submenulist[i].children[0].getAttribute("href");
			console.log(hreflink);
			if (url.indexOf(hreflink) != -1) {
				submenulist[i].classList.add("on");
			}
		}
		
	</script>
	<script src="js/scripts.js"></script>
	
</body>
</html>

