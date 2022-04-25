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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jonghyeon_style.css">
	<!-- Banner style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_style.css">
	
	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
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
.TreeFirstLi:nth-child(1){
	padding-left: 37%;
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
		console.log(url)
		location.href=url;
	}
	</script>
</head>
<body>
	<div class="gtco-loader"></div>
	
		<jsp:include page="../main/nav.jsp" >
		<jsp:param name="#" value="#"/>
	</jsp:include>
	
	<jsp:include page="../main/Tap.jsp" >
		<jsp:param name="#" value="#"/>
	</jsp:include>

		
	

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
					<div class="tree">
						<ul>
							<li class="TreeFirstLi"><a style="margin-right: 109px;" href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이영석 <br />대표님<br />세종(4세대 나이스 구축 사업)</a>
								<ul>
									<li><a href="#"> <img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이장수<br />부장<br />대구(2022 나이스 유지보수)
									</a>
										<ul>
											<li><a href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />김동업<br />차장<br />세종(4세대 나이스 구축 사업)</a>
											<li><a href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이상현<br />차장<br />세종(4세대 나이스 구축 사업)</a>
										</ul>
								</ul>

								<ul>
									<li><a href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이름<br />과장 <br />I Wayan Purushottama<br />Engineer</a>
									<li><a href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이름<br />과장 <br />Assistant Engineer</a>
									<li><a href="#"><img alt="" src="${pageContext.request.contextPath}/images/sample2.png"><br />이름<br />과장 <br />Assistant Engineer</a>
								</ul>
								<ul>
									<li><a href="#">사원1<br />Nico Simanjuntak<br />Technician
									</a>
									<li><a href="#">사원2<br />Nico Simanjuntak<br />Technician
									</a>
									<li><a href="#">사원3<br />Nico Simanjuntak<br />Technician
									</a>
									<li><a href="#">사원4<br />Nico Simanjuntak<br />Technician
									</a></li>
								</ul>
						</ul>


					</div>
				</div>
			</div>
		</div>
	</div>

<jsp:include page="../main/footer.jsp" >
	<jsp:param name="#" value="#"/>
</jsp:include>

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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
	<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath}/js/Tapcommon.js"></script>
</body>
</html>