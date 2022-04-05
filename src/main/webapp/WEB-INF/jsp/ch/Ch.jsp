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

		<jsp:include page="../main/nav.jsp" >
			<jsp:param name="#" value="#"/>
		</jsp:include>

		<jsp:include page="../main/Tap.jsp">
			<jsp:param name="#" value="#" />
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
						<div class="cont_box">
                <div class="history">
                    <div class="history_box">
                        <h4><span class="roboto">2010 ~</span> 현재</h4>
                        <ul>
                            <li class="this_year">
                            <dl>
                            <dt class="roboto">2020</dt>
                            <dd>사옥 이전 : 서울특별시 송파구 정의로8길 4, 케이디빌딩 1004호</dd>
                            </dl>
                            </li>
                            <li class="">
                                <dl>
                                    <dt class="roboto">2019</dt>
                                    <dd>에스지에이벤처스㈜ 신설 설립</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2018</dt>
                                    <dd>에스지에이블록체인㈜ 신설 설립</dd>
                                    <dd>보이스아이㈜ 인수</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2017</dt>
                                    <dd>에스지에이시스템즈㈜ 합병</dd>
                                    <dd>사옥이전 문정동 에이치비지니스파크</dd>
                                    <dd>에스지에이임베디드㈜ 코넥스 상장</dd>
                                    <dd>자산 양수 (문정동 에이치비지니스파크 A동 일부)</dd>
                                    <dd>㈜알엔에이솔루션 인수</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2016</dt>
                                    <dd>연 매출 1000억원 돌파</dd>
                                    <dd>㈜액시스인베스트먼트 설립</dd>
                                    <dd>㈜세원인포테크 인수</dd>
                                    <dd>㈜바이러스체이서 인수</dd>
                                    <dd>㈜넷인프라 인수</dd>
                                    <dd>에스지에이시스템즈㈜ 코넥스시장 상장</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2015</dt>
                                    <dd>에스지에이솔루션즈㈜ 코스닥상장 (구, ㈜레드비씨)</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2014</dt>
                                    <dd>정보보호 산업 유공자 포상 표창 수상</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2013</dt>
                                    <dd>연 매출 500억 돌파</dd>
                                    <dd>㈜강원시스템 인수</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2012</dt>
                                    <dd>레드게이트,비씨큐어 합병 - ㈜레드비씨</dd>
                                </dl>
                            </li>
                            <li>
                                <dl>
                                    <dt class="roboto">2010</dt>
                                    <dd>사옥이전 양재동 오상빌딩</dd>
                                    <dd>상호변경 에스지에이㈜</dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                    <div class="history_box">
                        <h4><span class="roboto">2003 ~ 2009</span></h4>
                            <ul>
                                <li>
                                    <dl>
                                        <dt class="roboto">2009</dt>
                                        <dd>㈜센트리솔루션 인수</dd>
                                        <dd>㈜비씨큐어 인수</dd>
                                        <dd>㈜레드게이트 인수</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="roboto">2008</dt>
                                        <dd>코스닥 시장 진출</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt class="roboto">2003</dt>
                                        <dd>법인 설립 (구, ㈜스캐니글로벌)</dd>
                                    </dl>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>

					</div>
			</div>
			</div>
		</div>

<jsp:include page="../main/footer.jsp" >
	<jsp:param name="#" value="#"/>
</jsp:include>

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