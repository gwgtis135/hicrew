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
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	
</head>
<body>


	<jsp:include page="../main/nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<div class="gtco-section-overflow">
		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row">
					<iframe id="groupIframe" style="border-width: 0px;" width="1190px" height="860px"></iframe>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function gourl(){
			console.log('gourl함수 실행 완료')
			var iframe = document.getElementById('groupIframe');
			iframe.setAttribute('src','http://gw.hicrew.kr/groupware/login.php');
			
			//iframe.domin='http://gw.hicrew.kr/groupware/login.php';
			console.log('domin 찍기')
		}
			
				gourl();
			
			
		</script>
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
	<script src="js/scripts.js"></script>
	<script src="js/Tapcommon.js"></script>
	<script>
</body>
</html>