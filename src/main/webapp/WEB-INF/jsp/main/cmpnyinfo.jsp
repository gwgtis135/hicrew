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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/icomoon.css">
<!-- Themify Icons-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
<!-- Owl Carousel  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
<!-- Flexslider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
<!-- Theme style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<!-- Theme style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
<!-- Banner style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_style.css">

<!-- Modernizr JS -->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
	<![endif]-->
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
<!-- Carousel -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!-- countTo -->
<script src="${pageContext.request.contextPath}/js/jquery.countTo.js"></script>
<!-- Flexslider -->
<script src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
<!-- Magnific Popup -->
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
<!-- Main -->
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
<script src="${pageContext.request.contextPath}/js/Tapcommon.js"></script>
</head>
<body>

	<div class="gtco-loader"></div>
	
		<jsp:include page="nav.jsp">
			<jsp:param name="#" value="#" />
		</jsp:include>
	<div id="page">
			<jsp:include page="Tap.jsp">
			<jsp:param name="#" value="#" />
		</jsp:include>
		<div class="gtco-section-overflow">
			<div class="gtco-section" id="gtco-services" data-section="services">
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
							<h2>회사 정보</h2>
							<p>교육정보화시스템 구축 및 운영 전문 기업으로 고객과 함께 공동 목표를 실현하기 위하여 끊임없는 노력을
								다하고 있습니다.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row">

								<div class="col-md-12">
									<div class="feature-left">
										<span class="icon"> <i class="icon-star"></i>
										</span>
										<div class="feature-copy">
											<h3>(주)하이크루</h3>
											<p>High-Technology CREW System</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="feature-left">
										<span class="icon"> <i class="icon-home"></i>
										</span>
										<div class="feature-copy">
											<h3>설립일</h3>
											<p>2018년 3월 13일</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="feature-left">
										<span class="icon"> <i class="icon-info"></i>
										</span>
										<div class="feature-copy">
											<h3>대표이사</h3>
											<p>이영석</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="feature-left">
										<a href="#gtco-contact"> <span class="icon"> <i
												class="icon-map"></i>
										</span>
										</a>
										<div class="feature-copy">
											<h3>본사주소</h3>
											<p>대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 animate-box" data-animate-effect="fadeIn">
							<div class="row">
								<div class="col-md-12">
									<div class="feature-left">
										<a href="tel:010-4351-1612"> <span class="icon"> <i
												class="icon-phone"></i>
										</span>
										</a>
										<div class="feature-copy">
											<h3>전화번호</h3>
											<p>010-4351-1612</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="feature-left">
										<span class="icon"> <i class="icon-cog"></i>
										</span>
										<div class="feature-copy">
											<h3>사업분야</h3>
											<p>System Integration(시스템 통합구축)</p>
											<p>Software Development(응용 SW개발)</p>
											<p>Consulting / ISP(컨설팀 / ISP)</p>
											<p>Product / Solution(제품 / 솔루션)</p>
											<p>Integration Maintenance(통합유지보수사업)</p>
										</div>
									</div>
								</div>
								<!--
							<div class="col-md-12">
								<div class="feature-left">
									<span class="icon">
										<i class="icon-layers"></i>
									</span>
									<div class="feature-copy">
										<h3>Data Gathering</h3>
										<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="feature-left">
									<span class="icon">
										<i class="icon-search"></i>
									</span>
									<div class="feature-copy">
										<h3>Search Engine</h3>
										<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
									</div>
								</div>
							</div>
							-->
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
	</div>
</body>
</html>

