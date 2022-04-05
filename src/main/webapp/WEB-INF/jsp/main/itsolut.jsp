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
<script src="js/scripts.js"></script>
<script src="js/Tapcommon.js"></script>
</head>
<body>

	<div class="gtco-loader"></div>

	<jsp:include page="nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<jsp:include page="solutTap.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<div id="page">
		<div id="gtco-blog" data-section="blog">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>IT솔루션</h2>
						<p>
							<em>하이크루</em>는 고객의 요구에 부합하는 최상의 시스템을 구축하기 위하여, 해당 분야의 핵심기술과 최고의
							성능 및 기능을 보유한 최적의 솔루션을 제공합니다.
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<a href="http://hicrew.iptime.org:8888/"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/neis.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>학생수강신청</h2>
								<p>언제,어디서나,인터넷만 되면 자유롭게 수강신청의 편의성을 제공하고, 체계적인 관리를 통해 효율성을 증대
									시키는 '수강신청 프로그램'</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.forwiz.com/business-area/solution/u-sync/"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/sub_business_U-sync_img3.jpg" alt="Image"
									class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>U-Sync</h2>
								<p>학생의 스마트기기를 편리하게 관리해 줍니다. 한번의 설정으로 모든 스마트 기기를 관리하는 솔루션</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.forwiz.com/business-area/solution/withlearn/"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/sub_business_withrun_img.jpg" alt="Image"
									class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>WithLearn</h2>
								<p>학생들이 자기주도적으로 문제를 만들어보고 친구들과 공유하고, 토론하며 학습할 수 있도록 도와줍니다.
									문제 뿐만 아니라 풀이 과정까지 친구들과 함께 하세요</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.tobesoft.co.kr/product/Nexacro.do"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/img_1.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>Unified JavaScript Framework 기반의 가장 빠른 OSMU 솔루션</h2>
								<p>HTML5 기반의 자바스크립트로 컴포넌트와 프레임워크를 통합·일원화한 넥사크로플랫폼은 투비소프트만의
									Unified JavaScript Framework를 통해 하나의 툴, 하나의 개발 소스로 다양한 기업 업무
									환경에 효과적으로 대응할 수 있습니다.</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p>  -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.tobesoft.co.kr/product/Xplatform.do"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/img_2.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>비교될 수 없는 개발 편의성으로 최고의 생산성 제공</h2>
								<p>기본 애니메이션 컴포넌트로 만으로도 스마트 환경에 익숙한 수준 높은 고객들의 눈높이를 맞출 수 있는
									화면 구현이 가능합니다. 또한 폼, 복합 컴포넌트 상속으로 거침없는 배포와 공유, 자유로운 확장으로 개발업무의
									생산성을 최고로 높여드립니다.</p>
								<!--<p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.tobesoft.co.kr/product/Miplatform.do"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/img_3.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>웹 환경의 한계를 넘는 높은 수준의 성능과 기능 제공</h2>
								<p>강력하고 풍부한 데스크톱 수준의 사용자 인터페이스(UI) 및 용이한 애플리케이션 개발 환경을 제공하고,
									한번의 응용 프로그램 개발로 웹은 물론 윈도우 모바일 계열의 PDA, 스마트폰 등 다양한 채널을 통합관리 할 수
									있습니다.</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-lg-block visible-md-block"></div>
					<div class="col-md-4">
						<a href="http://www.tobesoft.co.kr/product/Nexup.do"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/img_4.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>상상 그 이상의 편리함! 최고의 개발환경 제공</h2>
								<p>서비스를 가장 빠르고 쉽게 개발할 수 있도록 최고의 환경을 만들어 드립니다.</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-md-4">
						<a href="http://www.tobesoft.co.kr/product/Nexacro17.do"
							class="gtco-card-item has-text">
							<figure>
								<div class="overlay">
									<i class="ti-plus"></i>
								</div>
								<img src="images/img_6.jpg" alt="Image" class="img-responsive">
							</figure>
							<div class="gtco-text text-left">
								<h2>사용자 경험의 현재와 미래를 잇는 Real OSMU 솔루션</h2>
								<p>현재는 탁월한 고객 경험이 기업 가치를 결정합니다. 사용자 중심의 IT 환경 구축을 실현해 줄 유일한
									Real OSMU 솔루션! 웹과 네이티브의 경계를 허물고 하나의 소스로 모든 비즈니스 환경에 완벽하게 대응할 수
									있습니다.</p>
								<!-- <p class="gtco-category">Sep. 25th, 2016 by John Doe</p> -->
							</div>
						</a>
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
</body>
</html>

