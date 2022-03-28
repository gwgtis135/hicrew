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

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body onload="initialize()">

	<div class="gtco-loader"></div>

	<div id="page">
		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				<div class="row">
					<div class="col-sm-2 col-xs-12">
						<div id="gtco-logo">
							<img src="images/logo.png" alt="(주)하이크루" />
						</div>
					</div>
					<div class="col-xs-10 text-right menu-1 main-nav">
						<ul>
							<li class="active"><a href="#" data-nav-section="home">Home</a></li>
							<li><a href="#" data-nav-section="services">회사소개</a></li>
							<li><a href="#" data-nav-section="CI">주요사업</a></li>
							<li><a href="#" data-nav-section="portfolio">그룹웨어</a></li>
							<li><a href="http://gw.hicrew.kr" class="external">페이지
									관리</a></li>
						</ul>
					</div>
				</div>

			</div>
		</nav>
	</div>
	<div class="gtco-section-overflow">

		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>상단 메뉴 관리</h2>
					</div>
				</div>
				<div class="row">
					<div class="row">

						<div class="row" style="margin-left: 100px; margin-right: 100px;">
							<div class="tbl_top">
								<span class="total"> 총 5 건 </span>
								<!-- 
                <span>
                    <b id="noticePage"></b> / <b id="noticePageCnt"></b>
                </span>
                 -->
							</div>
							<div class="tbl board" id="noticeGrid">
								<table>
									<colgroup>
										<col style="width: 95px">
										<col style="width: auto">
										<col style="width: 350px">
										<col style="width: 50px">
									</colgroup>
									<tbody>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="50" value="Home"></td>
											<td>메뉴 링크 <input type="text" size="50" value="home"></td>
											<td>메뉴 순서 <input type="text" size="5" value="1"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="50" value="회사 소개"></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="cmpnyintrcn"></td>
											<td>메뉴 순서 <input type="text" size="5" value="2"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="50" value="주요 사업"></td>
											<td>메뉴 링크 <input type="text" size="50" value="mainbsns"></td>
											<td>메뉴 순서 <input type="text" size="5" value="3"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="50" value="그룹웨어"></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="gw.hicrew.kr"></td>
											<td>메뉴 순서 <input type="text" size="5" value="4"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="50" value="페이지 관리"></td>
											<td>메뉴 링크 <input type="text" size="50" value="adminPage"></td>
											<td>메뉴 순서 <input type="text" size="5" value="5"
												style="text-align: center;"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="tbl_bottom" style="float: right;">
								<div class="pagenation" id="pageControlMgmt"></div>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">추가</a>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">삭제</a>
								<a id="a_remove" href="#" class="btn_type3 _rosRestrict">미리보기</a>
							</div>
						</div>

					</div>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
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
	</script>
</body>
</html>

