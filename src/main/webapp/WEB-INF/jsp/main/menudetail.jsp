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
<body>

	<div id="solutmodal" class="modal">
		<div class="modal-window">
			<div class="close-area">X</div>
			<div class="modal-title">
				<h2>세부 항목 관리</h2>
			</div>
			<div class="modal-body">
				<p>
					항목 이름<input type="text" />
				</p>
				<p>
					항목 링크<input type="text" />
				</p>
				<p>
					이미지 <input type="file" />
				</p>
				<p>
					항목 상세<input type="text" />
				</p>
			</div>
			<div class="modal-footer">
				<p>
					<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a> <a
						id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a> <a
						id="a_remove" href="#" class="btn_type1 _rosRestrict">닫기</a>
				</p>
			</div>
		</div>
	</div>
	<div id="photomodal" class="modal">
		<div class="modal-window">
			<div class="close-area">X</div>
			<div class="modal-title">
				<h2>이미지 관리</h2>
			</div>
			<div class="modal-body">
				<p>
					이미지 이름<input type="text" />
				</p>
				<p>
					이미지 <input type="file" />
				</p>
			</div>
			<div class="modal-footer">
				<p>
					<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a> <a
						id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a> <a
						id="a_remove" href="#" class="btn_type1 _rosRestrict">닫기</a>
				</p>
			</div>
		</div>
	</div>
	<div class="gtco-loader"></div>

	<jsp:include page="nav.jsp" >
		<jsp:param name="#" value="#"/>
	</jsp:include>
	<div class="gtco-section-overflow">

		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>상세 메뉴 관리</h2>
					</div>
				</div>
				<div class="row">
					<div class="row">

						<div class="row" style="margin-left: 100px; margin-right: 100px;">
							<div class="tbl_top">
								<select name="LCALS" id="LCALS">
									<option value="">대분류 선택</option>
									<option value="home">Home</option>
									<option value="cmpnyintrcn">회사 소개</option>
									<option value="mainbsns">주요 사업</option>
									<option value="gw.hicrew.kr">그룹웨어</option>
									<option value="adminpage">페이지 관리</option>
								</select> <select name="selectcmpnyintrcn" id="selectcmpnyintrcn"
									class="hide">
									<option value="">상세 메뉴 선택</option>
									<option value="cmpnyinfo">회사 정보</option>
									<option value="ciintrcn">CI 소개</option>
									<option value="cmpnyhist">회사 연혁</option>
									<option value="">조직도</option>
									<option value="">오시는길</option>
									<option value="photo">포토 스토리</option>
								</select> <select name="selectmainbsns" id="selectmainbsns" class="hide">
									<option value="">상세 메뉴 선택</option>
									<option value="pdfsolut">PDF 솔루션</option>
									<option value="itsolut">IT솔루션</option>
								</select> <select name="selectadminpage" id="selectadminpage"
									class="hide">
									<option value="">상세 메뉴 선택</option>
									<option value="">상단 메뉴 관리</option>
									<option value="">상세 메뉴 관리</option>
								</select>
								<!-- 
                <span>
                    <b id="noticePage"></b> / <b id="noticePageCnt"></b>
                </span>
                 -->
							</div>
							<textarea id="intrcnment" class="hide" rows="5" cols="118"
								style="resize: none;" placeholder="소개문구를 적어주세요"></textarea>
							<div class="tbl board">
               
								<!--주요연혁 -->
								<div class="hide table" id="tblcmpnyhist">
								<div class="search_box_wrap">
						            <div class="search_box">
						                <div class="sel_box">
						                    <select name="scolumn" id="scolumn">
						                        <option value="">전체</option>
						                        <option value="title">제목</option>
						                        <option value="contents">내용</option>
						                    </select>
						                </div>
						                <div class="ipt_box">
						                    <input id="searchIpt" name="skeyword" onKeyDown="onKeyDown();" value=""  type="text" placeholder="검색어를 입력하세요">
						                    <label for="searchIpt" id= "search_btn">검색하기</label>
						                </div>
						            </div>
						        </div>
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
											<td>날짜 <input type="date" size="50" value="(주)하이크루"></td>
											<td>연혁 내용 <input type="text" size="50"
												value="High-Technology CREW System"></td>
											<td>항목 순서 <input type="text" size="5" value="1"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>날짜<input type="date" size="50" value="설립일"></td>
											<td>연혁 내용 <input type="text" size="50"
												value="2018년 3월 13일"></td>
											<td>항목 순서 <input type="text" size="5" value="2"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>날짜 <input type="date" size="50" value="대표이사"></td>
											<td>연혁 내용 <input type="text" size="50" value="이영석"></td>
											<td>항목 순서 <input type="text" size="5" value="3"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>날짜 <input type="date" size="50" value="본사주소"></td>
											<td>연혁 내용 <input type="text" size="50"
												value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
											<td>항목 순서 <input type="text" size="5" value="4"
												style="text-align: center;"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>날짜 <input type="date" size="50" value="전화번호"></td>
											<td>연혁 내용 <input type="text" size="50"
												value="070-8772-1612"></td>
											<td>항목 순서 <input type="text" size="5" value="5"
												style="text-align: center;"></td>
										</tr>
										
									</tbody>
								</table>
						        
								</div>
								<div class="hide table" id="tblcmpnyinfo">
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
												<td>항목 이름 <input type="text" size="50" value="(주)하이크루"></td>
												<td>항목 내용 <input type="text" size="50"
													value="High-Technology CREW System"></td>
												<td>항목 순서 <input type="text" size="5" value="1"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="설립일"></td>
												<td>항목 내용 <input type="text" size="50"
													value="2018년 3월 13일"></td>
												<td>항목 순서 <input type="text" size="5" value="2"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="대표이사"></td>
												<td>항목 내용 <input type="text" size="50" value="이영석"></td>
												<td>항목 순서 <input type="text" size="5" value="3"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="본사주소"></td>
												<td>항목 내용 <input type="text" size="50"
													value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
												<td>항목 순서 <input type="text" size="5" value="4"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="전화번호"></td>
												<td>항목 내용 <input type="text" size="50"
													value="070-8772-1612"></td>
												<td>항목 순서 <input type="text" size="5" value="5"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="사업분야"></td>
												<td>항목 내용 <input type="text" size="50"
													value="System Integration(시스템 통합구축)"></td>
												<td>항목 순서 <input type="text" size="5" value="6"
													style="text-align: center;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblciintrcn">
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
												<td>항목 이름 <input type="text" size="50" value="(주)하이크루"></td>
												<td>항목 내용 <input type="text" size="50"
													value="High-Technology CREW System"></td>
												<td>항목 순서 <input type="text" size="5" value="1"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="설립일"></td>
												<td>항목 내용 <input type="text" size="50"
													value="2018년 3월 13일"></td>
												<td>항목 순서 <input type="text" size="5" value="2"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="대표이사"></td>
												<td>항목 내용 <input type="text" size="50" value="이영석"></td>
												<td>항목 순서 <input type="text" size="5" value="3"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="본사주소"></td>
												<td>항목 내용 <input type="text" size="50"
													value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
												<td>항목 순서 <input type="text" size="5" value="4"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="전화번호"></td>
												<td>항목 내용 <input type="text" size="50"
													value="070-8772-1612"></td>
												<td>항목 순서 <input type="text" size="5" value="5"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="50" value="사업분야"></td>
												<td>항목 내용 <input type="text" size="50"
													value="System Integration(시스템 통합구축)"></td>
												<td>항목 순서 <input type="text" size="5" value="6"
													style="text-align: center;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblitsolut">
									<table>
										<colgroup>
											<col style="width: 95px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="notice" onclick="solutmodalopen()">
												<td class="num"><input type="checkbox"></td>
												<td>학생 수강 신청</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>U-Sync</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>WithLearn</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>넥사크로 플랫폼 14</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>엑스플랫폼 9.2</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>마이 플랫폼</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>넥스업</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>넥사크로플랫폼 17</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblphoto">
									<a id="a_remove" href="#" class="btn_type2 _rosRestrict" onclick="imgswitch('phototable')">게시판</a>
									<a id="a_remove" href="#" class="btn_type2 _rosRestrict" onclick="imgswitch('photoimage')">이미지</a>
									<table class="hide2" id="phototable">
										<colgroup>
											<col style="width: 95px">
											<col style="width: auto">
											<col style="width: 55px">
										</colgroup>
										<tbody>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td onclick="photomodalopen()">거제, 바람의 언덕</td>
												<td>이미지 순서 <input type="text" size="5" value="1"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>팔공, 동화사</td>
												<td>이미지 순서 <input type="text" size="5" value="2"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>지리산, 화엄사</td>
												<td>이미지 순서 <input type="text" size="5" value="3"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>종무식, 영덕</td>
												<td>이미지 순서 <input type="text" size="5" value="4"
													style="text-align: center;"></td>
											</tr>
										</tbody>
									</table>
									<div class="slideshow-container hide2" id="photoimage">
										<div class="mySlides fade2">
											<img class="main_slideImg" src="images/Crews/story1_1.jpg"
												onclick="photomodalopen()">
											<div class="text">거제, 바람의 언덕</div>
										</div>
										<div class="mySlides fade2">
											<img class="main_slideImg" src="images/Crews/story2_1.jpg">
											<div class="text">팔공, 동화사</div>
										</div>
										<div class="mySlides fade2">
											<img class="main_slideImg" src="images/Crews/story3_1.jpg">
											<div class="text">지리산, 화엄사</div>
										</div>
										<div class="mySlides fade2">
											<img class="main_slideImg" src="images/Crews/story4_1.jpg">
											<div class="text">종무식, 영덕</div>
										</div>
										<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
											onclick="plusSlides(1)">❯</a>
									</div>
								</div>
							</div>
						</div>
						<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict">추가</a> <a
								id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a> <a
								id="a_remove" href="#" class="btn_type1 _rosRestrict">삭제</a> <a
								id="a_remove" href="#" class="btn_type3 _rosRestrict">미리보기</a>
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
	<script>
		function solutmodalopen(){
			console.log("solutmodalopen!");
			const modal = document.getElementById("solutmodal");
			modal.style.display = "flex";
			const closeBtn = modal.querySelector(".close-area");
			closeBtn.addEventListener("click", e => {
			    modal.style.display = "none";
			})
			modal.addEventListener("click", e => {
			    const evTarget = e.target;
			    if(evTarget.classList.contains("modal")) {
			        modal.style.display = "none";
			    }
			})
		}
		
		function photomodalopen(){
			console.log("photomodalopen!");
			const modal = document.getElementById("photomodal");
			modal.style.display = "flex";
			const closeBtn = modal.querySelector(".close-area");
			closeBtn.addEventListener("click", e => {
			    modal.style.display = "none";
			})
			modal.addEventListener("click", e => {
			    const evTarget = e.target;
			    if(evTarget.classList.contains("modal")) {
			        modal.style.display = "none";
			    }
			})
		}
		
		$(document).ready(function() {
			document.getElementById('LCALS').onchange = function() {
				var tasel = "select"+this.value;
				var selectlist = document.querySelectorAll(".tbl_top > select:not(:first-child)");
				for(selecttag of selectlist){
					selecttag.classList.add("hide");
					selecttag.selectedIndex=0;
					selecttag.onchange=function(){
						var ta = this.value;
						var tatbl = "tbl"+this.value;
						var tbllist = document.querySelectorAll(".board > .table");
						for(tbl of tbllist){
							tbl.classList.add("hide")
						}
						document.getElementById(tatbl).classList.toggle("hide");
						document.getElementById("intrcnment").value=ta;
						document.getElementById("intrcnment").classList.remove("hide");
						console.log(tatbl);
					}
				}
				document.getElementById(tasel).classList.toggle("hide");
			}
		});
		
		var slideIndex = 1;
		showSlides(slideIndex);
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}

		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}

		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  if (n > slides.length) {
			  slideIndex = 1
			  }
		  if (n < 1) {
			  slideIndex = slides.length
			  }
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		  for (i = 0; i < dots.length; i++) {
		    //  dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";
		  //dots[slideIndex-1].className += " active";
		}

		function imgswitch(ta){
			var phototbl = document.getElementById("phototable");
			var photoimg = document.getElementById("photoimage");
			if(ta =="phototable"){
				photoimg.classList.add("hide2")
				phototbl.classList.toggle("hide2");
			}else if(ta =="photoimage"){
				phototbl.classList.add("hide2")
				photoimg.classList.toggle("hide2");
			}
			
		}
	</script>
</body>
</html>

