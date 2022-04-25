<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jonghyeon_style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/HJ_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_style.css">
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
	<![endif]-->
<style>
dl, dt {
	margin: 0;
}

dd {
	margin: 0;
}

dd.category_thema, dd.category_style, dd.category_intrcn {
	display: inline;
}

dd.category_thema.all {
	display: block;
}

.tbl.board tbody td {
	height: 40px;
	padding: 10px 0;
	color: #333333;
	font-weight: 400;
	vertical-align: top;
}

input[type="text"] {
	color: #697a8d;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #d9dee3;
	appearance: none;
	border-radius: 0.375rem;
}

.imgsample, .imgstyle {
	width: 420px;
}
input[type='radio']:checked+label > img {
	border:1px solid blue;
}
div#cke_intrcnment {
    margin-top: 10px;
}
</style>
</head>
<body>

	<div class="gtco-loader"></div>
	<jsp:include page="nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<jsp:include page="adminTap.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<div id="page">
		<input type="hidden" id="selectedmenu"> <input type="hidden"
			id="selecteddetail">
		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row">
					<div class="row">
						<div class="tbl board" id="noticeGrid">
							<table>
								<colgroup>
									<col style="width: 220px">
									<col style="width: auto">
								</colgroup>
								<tr>
									<jsp:include page="lefttd.jsp">
										<jsp:param name="#" value="#" />
									</jsp:include>
									<td class="n_admin">
										<div class="category_add">
											<dl>
												<div style="float: left; margin-right: 1.5rem">
													<dt class="category_name">페이지 명</dt>
													<dd class="category_name">
														<input type="text" id="inptcategory_name">
													</dd>
												</div>
												<div style="float: left; margin-right: 1.5rem">
													<dt class="category_link">페이지 주소</dt>
													<dd class="category_link">
														<input type="text" id="inptcategory_link">
													</dd>
												</div>
												<div style="float: left;">
													<dt class="category_useyn hide">노출 여부</dt>
													<dd class="category_useyn hide">
														<select name="useyn" id="category_useyn">
															<option value="Y">사용</option>
															<option value="N">미사용</option>
														</select>
													</dd>
												</div>
												<dt class="category_intrcn">페이지 문구</dt>
												<dd class="category_intrcn">
													<textarea id="intrcnment" name="nttCn" class="" rows="5"
														cols="118" style="resize: none;" placeholder="소개문구를 적어주세요"></textarea>
													<ckeditor:replace replace="nttCn"
														basePath="${pageContext.request.contextPath}/html/egovframework/com/cmm/utl/ckeditor/" />
												</dd>

												<!-- 												<div style="float:left; margin-right:1.5rem">
												<dt class="category_thema hide all">페이지 테마 일괄적용</dt>
												<dd class="category_thema hide all">
													<select name="useyn" id="category_useyn">
														<option value="normal">기본</option>
														<option value="weekness">색약자</option>
													</select>
												</dd>
												</div> -->

												<dt class="category_style hide">페이지 스타일</dt>
												<dd class="category_style hide">
													<div class="slideshow-container" style="float:left;">
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample1.png">
														</div>
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample2.png">
														</div>
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample3.png">
														</div>
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample4.png">
														</div>
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample5.png">
														</div>
														<div class="mySlidesprev fade1">
															<img class="prev_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample6.png">
														</div>
													</div>
													<div class="slideshow-container" style="float:left;">
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="1"
																src="${pageContext.request.contextPath}/images/sample/sample1.png">
														</div>
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="2"
																src="${pageContext.request.contextPath}/images/sample/sample2.png">
														</div>
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="3"
																src="${pageContext.request.contextPath}/images/sample/sample3.png">
														</div>
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="4"
																src="${pageContext.request.contextPath}/images/sample/sample4.png">
														</div>
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="5"
																src="${pageContext.request.contextPath}/images/sample/sample5.png">
														</div>
														<div class="mySlides fade2">
															<img class="main_slideImg" data-value="6"
																src="${pageContext.request.contextPath}/images/sample/sample6.png">
														</div>
														<a id="prev" class="prev" onclick="plusSlides(-1)">❮</a> 
														<a id="next" class="next" onclick="plusSlides(1)">❯</a>
													</div>
													<div class="slideshow-container" style="float:left;">
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample1.png">
														</div>
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample2.png">
														</div>
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample3.png">
														</div>
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample4.png">
														</div>
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample5.png">
														</div>
														<div class="mySlidesnext fade3">
															<img class="next_slideImg"
																src="${pageContext.request.contextPath}/images/sample/sample6.png">
														</div>
													</div>

													<!-- <div>
														<input type="radio" id="type1" name="pagetype"
															value="type1"> <label for="type1"> <img
															src="${pageContext.request.contextPath}/images/sample/sample1.png" alt="1번"
															class="imgsample">
														</label> <input type="radio" id="type2" name="pagetype"
															value="type2"> <label for="type2"> <img
															src="${pageContext.request.contextPath}/images/sample/sample2.png" alt="2번"
															class="imgsample">
														</label> <input type="radio" id="type3" name="pagetype"
															value="type3"> <label for="type3"> <img
															src="${pageContext.request.contextPath}/images/sample/sample3.png" alt="3번"
															class="imgsample">
														</label> <input type="radio" id="type4" name="pagetype"
															value="type4"> <label for="type4"> <img
															src="${pageContext.request.contextPath}/images/sample/sample3.png" alt="4번"
															class="imgsample">
														</label> <input type="radio" id="type5" name="pagetype"
															value="type5"> <label for="type5"> <img
															src="${pageContext.request.contextPath}/images/sample/sample5.png" alt="5번"
															class="imgsample">
														</label> <input type="radio" id="type6" name="pagetype"
															value="type6"> <label for="type6"> <img
															src="${pageContext.request.contextPath}/images/sample/sample6.png" alt="6번"
															class="imgsample">
														</label>
													</div> -->
												</dd>
												
												<div style="float: left; margin-top:10px">
													<div style="float: right;">
														<dt class="category_thema hide all">페이지 테마 일괄적용</dt>
														<dd class="category_thema hide all">
															<select name="useyn" id="category_useyn">
																<option value="normal">기본</option>
																<option value="weekness">색약자</option>
															</select>
														</dd>
													</div>
													<dt class="category_thema hide">페이지 테마</dt>
													<dd class="category_thema hide">
														<div>
															<input type="radio" id="type1" name="pagetype" class="hide"
																value="1" checked> <label for="type1"> <img
																src="${pageContext.request.contextPath}/images/sample/color1.png" alt="1번"
																class="imgstyle">
															</label> 
															<input type="radio" id="type2" name="pagetype" class="hide"
																value="2"> 
															<label for="type2"> <img
																src="${pageContext.request.contextPath}/images/sample/color2.png" alt="2번"
																class="imgstyle">
															</label>
														</div>
													</dd>
												</div>
											</dl>
										</div>
									</td>
								</tr>
							</table>
						</div>
						<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_reset" href="#" class="btn_type2 _rosRestrict">초기화</a>
							<a id="a_save" href="#" class="btn_type1 _rosRestrict">저장</a> 
							<a id="a_next" href="#" class="btn_type3 _rosRestrict">다음</a>
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
					</div>
				</div>

			</div>
		</footer>
	</div>
	<form id="form4nextbtn" action="${pageContext.request.contextPath}/menudetail.do" method="post">
		<input type="hidden" name="UpendType">
		<input type="hidden" name="UpendIntrcn">
		<input type="hidden" name="UpendName">
		<input type="hidden" name="UpendLink">
		<input type="hidden" name="UpendYn">
		<input type="hidden" name="UpendThema">
	</form>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
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
	<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath}/js/Tapcommon.js"></script>
	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
	<!--  ck 에디터 적용 -->
	<script type="text/javascript"
		src="<c:url value='/html/egovframework/com/cmm/utl/ckeditor/ckeditor.js'/>"></script>
	<script>
		var selmenu = document.querySelector("#selectedmenu");
		var seldetail = document.querySelector("#selecteddetail");
		var inptname = document.querySelector("#inptcategory_name");
		var inptlink = document.querySelector("#inptcategory_link");
		var inptuseyn = document.querySelector("#category_useyn");
		var ctgrystyle = document.getElementsByClassName("category_style");
		var ctgrythema = document.getElementsByClassName("category_thema");
		var ctgryuseyn= document.getElementsByClassName("category_useyn");
		var ctgryintrcn = document.getElementsByClassName("category_intrcn");

		var addhide = function() {
			for (var j = 0; j < ctgrystyle.length; j++) {
				ctgrystyle[j].classList.add("hide");
			}
			for (var j = 0; j < ctgrythema.length; j++) {
				ctgrythema[j].classList.add("hide");
			}
			for (var j = 0; j < ctgryuseyn.length; j++) {
				ctgryuseyn[j].classList.add("hide");
			}
			inptname.value = "";
			inptlink.value = "";
			inptuseyn.selectedIndex = 0;
		}

		function removetds(target) {
			for (var i = 0; i < target.length; i++) {
				target[i].classList.remove("tree-div-selected");
			}
		}
		function clicktree(event) {
			var span = event.target.querySelector("span") ? event.target
					.querySelector("span") : event.target;
			var div = span.closest("div");
			var depth1ul = document.getElementsByClassName("depth1");
			var depth2ul = document.getElementsByClassName("depth2");
			console.log("clicktree!")
			if (div.classList.contains("depth1")) {
				// 첫번째 뎁스
				seldetail.value = "";
				var ul = div.parentElement.querySelector("ul");
				console.log(ul);
				removetds(depth1ul);
				removetds(depth2ul);
				var inneruls = document.getElementsByClassName("innerul");
				for (var i = 0; i < inneruls.length; i++) {
					// 첫뎁스 하위 ul 태그 가리기
					inneruls[i].classList.add("hide");
				}
				if (ul != null) {
					addhide();
					if (selmenu.value === span.innerText) {
						// 이미 선택된 메뉴 클릭
						selmenu.value = "";
						console.log("1")
					} else {
						// 다른거 클릭
						div.classList.add("tree-div-selected");
						ul.classList.remove("hide");
						selmenu.value = span.innerText;
						console.log("2")
					}
				} else {
					if (selmenu.value === span.innerText) {
						// 이미 선택된 메뉴 클릭
						selmenu.value = "";
						addhide();
						console.log("3")
					} else {
						addhide();
						// 다른거 클릭
						div.classList.add("tree-div-selected");
						selmenu.value = span.innerText;
						inptname.value = span.innerText;
						inptlink.value = span.getAttribute("data-link");
						console.log("4")
					}
				}
			}
			if (div.classList.contains("depth2")) {
				console.log(span.getAttribute("data-link"));
				console.log(span);
				console.log(div);
				removetds(depth2ul);
				if (seldetail.value === span.innerText) {
					// 이미 선택된 메뉴 클릭
					seldetail.value = "";
					addhide();
					console.log("5")
				} else if (div.getAttribute("data-delable") == 0) {
					// 삭제 가능한 페이지 ex) 새페이지 등 클릭
					div.classList.add("tree-div-selected");
					addhide();
					for (var j = 0; j < ctgrystyle.length; j++) {
						ctgrystyle[j].classList.remove("hide");
					}
					for (var j = 0; j < ctgrythema.length; j++) {
						ctgrythema[j].classList.remove("hide");
					}
					for (var j = 0; j < ctgryuseyn.length; j++) {
						ctgryuseyn[j].classList.remove("hide");
					}
					seldetail.value = span.innerText;
					inptname.value = span.innerText;
					inptlink.value = span.getAttribute("data-link");
					console.log("6")

				} else {
					// 다른거 클릭
					div.classList.add("tree-div-selected");
					for (var j = 0; j < ctgrythema.length; j++) {
						ctgrythema[j].classList.remove("hide");
					}
					for (var j = 0; j < ctgryuseyn.length; j++) {
						ctgryuseyn[j].classList.remove("hide");
					}
					console.log("asd");
					seldetail.value = span.innerText;
					inptname.value = span.innerText;
					inptlink.value = span.getAttribute("data-link");
					console.log("7")
				}
			}
		}

		document.querySelector("#tree").addEventListener("click", clicktree);

		document.getElementById("btn_addcategory").onclick = function(e) {
			console.log("add");
			console.log("selmenu" + selmenu.value);
			console.log("seldetail" + seldetail.value);
			var span = document.createElement("span");
			span.innerText = "새 메뉴";
			var label = document.createElement("label");
			label.append(span);
			var div = document.createElement("div");
			div.classList.add("menu-link");
			console.log(li);
			if (selmenu.value == "") {
				//메뉴선택 안됨 메뉴 추가해야됨
				var i = document.createElement("i");
				i.classList.add("menu-icon", "tf-icons", "bx", "bx-layout");
				div.append(i);
				div.classList.add("menu-toggle", "depth1");
				div.setAttribute("data-delable", "0");
				div.append(label);
				var li = document.createElement("li");
				li.classList.add("menu-item", "ui-sortable-handle");
				li.append(div);
				console.log(this.closest("td").querySelector("ul#tree").append(
						li));
				console.log(this.closest("td"));
				var ul = document.createElement("ul");
				ul.classList.add("menu-sub");
				li.append(ul);
				this.closest("td").querySelector("ul#tree").append(li);
				console.log("메뉴선택 안됨 메뉴 추가해야됨")
			} else {
				// 메뉴 선택됨 세부 항목 추가하면됨
				span.innerText = "새 페이지";
				console.log("메뉴 선택됨 세부 항목 추가하면됨");
				div.classList.add("menu-link", "depth2");
				div.setAttribute("data-delable", "0");
				div.append(label);
				var li = document.createElement("li");
				li.classList.add("menu-item");
				li.append(div);
				document.querySelector(".tree-div-selected").parentElement
						.querySelector("ul.menu-sub").append(li);

			}
		}
		document.getElementById("btn_delcategory").onclick = function(e) {
			var selected = document.querySelectorAll(".tree-div-selected");
			if (!selected[0]) {
				console.log("선택된 항목이 없음");
				alert("선택된 것이 없습니다.");
			} else if (!selected[1]) {
				if (selected[0].getAttribute("data-delable") == 1) {
					// 선택된 메뉴가 지우면 안되는 리스트에 포함되 있음.
					console.log("메뉴 삭제 하면 안됨");
					alert("삭제 할 수 없는 메뉴 입니다.");
				} else {
					console.log("메뉴 삭제하면 됨");
					console.log(selected[0].parentElement);
					selmenu.value = "";
					addhide();
					selected[0].parentElement.remove();
				}
			} else {
				if (selected[1].getAttribute("data-delable") == 2) {
					// 선택된 항목이 지우면 안되는 리스트에 포함되 있음.
					console.log("항목 삭제 하면 안됨");
					alert("삭제 할 수 없는 페이지 입니다.");
				} else {
					console.log("항목 삭제하면 됨");
					console.log(selected[1].parentElement);
					selmenu.value = "";
					addhide();
					selected[1].parentElement.remove();
				}
			}
			console.log("del");
		}

		// D&D
		$("#tree").sortable();
		$("#tree").disableSelection();
		$(".menu-sub").sortable();
		$(".menu-sub").disableSelection();

		var slideIndex = 0;
		showSlides(slideIndex);
		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slidesprev = document.getElementsByClassName("mySlidesprev");
			var slides = document.getElementsByClassName("mySlides");
			var slidesnext = document.getElementsByClassName("mySlidesnext");
			if (n > slides.length-1) {
				slideIndex = 0;
			}
			if (n < 0) {
				slideIndex = slides.length-1;
			}
			for (i = 0; i < slides.length; i++) {
				slidesprev[i].style.display = "none";
				slides[i].style.display = "none";
				slidesnext[i].style.display = "none";
			}
			if(slideIndex==0){
				slidesprev[slides.length-1].style.display = "block";
			}else{
				slidesprev[slideIndex-1].style.display = "block";
			}
			slides[slideIndex].style.display = "block";
			if(slideIndex==slides.length-1){
				slidesnext[0].style.display = "block";
			}else{
				slidesnext[slideIndex+1].style.display = "block";
			}
		}
		
		function sendnext(){
			var form = document.querySelector("#form4nextbtn");
			var inpttype4post = document.querySelector("input[name='UpendType']")
			var inptintrcn4post = document.querySelector("input[name='UpendIntrcn']")
			var inptname4post = document.querySelector("input[name='UpendName']")
			var inptlink4post = document.querySelector("input[name='UpendLink']")
			var inptuseyn4post = document.querySelector("input[name='UpendYn']")
			var inptthema4post = document.querySelector("input[name='UpendThema']")
			
			inpttype4post.value= document.querySelector('div.mySlides[style="display: block;"] img').getAttribute("data-value");
			inptintrcn4post.value= CKEDITOR.instances.intrcnment.getData();
			inptname4post.value= document.querySelector("#inptcategory_name").value;
			inptlink4post.value= document.querySelector("#inptcategory_link").value;
			inptuseyn4post.value= document.querySelector("#category_useyn").value;
			inptthema4post.value= document.querySelector("input[type='radio']:checked").getAttribute("value");
			
			console.log(form);
			console.log(CKEDITOR.instances.intrcnment.getData());
		//return 0;
			form.submit();

		}
		document.querySelector("#a_next").addEventListener("click",sendnext);

		window.onload=function(){
			console.log("${FLAG }");
			if("${FLAG }" == "true"){
				loadpage();
			}else if("${UpendFlag }" != ""){
				if(confirm("작업 하던 페이지를 불러오시겠습니까?")){
					loadpage();
				}
			}
		}
	</script>
</html>

