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
<link rel="stylesheet" href="css/category.css">
<link rel="stylesheet" href="css/jonghyeon_style.css">
<link rel="stylesheet" href="css/HJ_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="css/event_style.css">
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
dl, dt {
	margin: 0;
}

dd {
	margin: 0;
}

dd.category_sample {
	display: inline;
}

.tbl.board tbody td {
	height: 40px;
	padding: 10px 0;
	color: #333333;
	font-weight: 400;
	vertical-align: top;
}

label {
	font-weight: normal;
}

ul#tree li div:hover, ul.innerul li div:hover {
	color: #007FFF;
	text-decoration: underline;
}

.tree-selected div label {
	font-weight: bold;
}

.tree-div-selected {
	color: orange;
	font-weight: bold;
}

input[type="text"] {
	color: #697a8d;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #d9dee3;
	appearance: none;
	border-radius: 0.375rem;
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
						<div class="row" style="margin-left: 100px; margin-right: 100px;">
							<div class="tbl board" id="noticeGrid">
								<table>
									<colgroup>
										<col style="width: 220px">
										<col style="width: 750px">
									</colgroup>
									<tr>
										<td style="vertical-align: top;">
											<div class="list_btn">
												<a href="#" class="btn_type1" id="btn_addcategory">추가</a> <a
													href="#" class="btn_type1" id="btn_delcategory">삭제</a>
											</div>
											<ul id="tree">
												<li>
													<div class="drag-label list tree-has-child depth1">
														<label><span data-link="main.do">Home</span></label>
													</div>
												</li>
												<li>
													<div class="drag-label list tree-has-child depth1">
														<label><span>회사 소개</span></label>
													</div>
													<ul class="innerul hide">
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="cmpnyinfo.do">회사
																		개요</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="CIintrcn.do">CI
																		소개</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="ch.do">주요 연혁</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="orgcht.do">조직도</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="directions.do">오시는
																		길</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="photo.do">포토스토리</span></label>
															</div>
														</li>
													</ul>
												</li>
												<li>
													<div class="drag-label list tree-has-child depth1">
														<label><span>주요사업</span></label>
													</div>
													<ul class="innerul hide">
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="pdfsolut.do">pdf솔루션</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label depth2">
																<label><span data-link="itsolut.do">it솔루션</span></label>
															</div>
														</li>
													</ul>
												</li>
												<li>
													<div class="drag-label list tree-has-child depth1">
														<label><span data-link="http://gw.hicrew.kr">그룹웨어</span></label>
													</div>
												</li>
											</ul>
										</td>
										<td class="n_admin">
											<div class="category_add">
												<dl>
													<dt class="category_name">항목 명</dt>
													<dd class="category_name">
														<input type="text" id="inptcategory_name">
													</dd>
													<dt class="category_link">항목 주소</dt>
													<dd class="category_link">
														<input type="text" id="inptcategory_link">
													</dd>
													<dt class="category_sample hide">항목 샘플</dt>
													<dd class="category_sample hide" id="category_sample">
														<div>
															<input type="radio" id="type1" name="pagetype"
																value="type1"> <label for="type1"> <img
																src="images/sample/sample1.png" alt="1번"
																style="width: 200px">
															</label> <input type="radio" id="type2" name="pagetype"
																value="type2"> <label for="type2"> <img
																src="images/sample/sample2.png" alt="2번"
																style="width: 200px">
															</label>
														</div>
													</dd>
													<dt class="category_style hide">항목 스타일</dt>
													<dd class="category_style hide">
														<div>
															<input type="radio" id="type1" name="pagetype"
																value="type1"> <label for="type1"> <img
																src="images/sample/sample1.png" alt="1번"
																style="width: 200px">
															</label> <input type="radio" id="type2" name="pagetype"
																value="type2"> <label for="type2"> <img
																src="images/sample/sample2.png" alt="2번"
																style="width: 200px">
															</label> <input type="radio" id="type3" name="pagetype"
																value="type3"> <label for="type3"> <img
																src="images/sample/sample3.png" alt="3번"
																style="width: 200px">
															</label> <br> <input type="radio" id="type4" name="pagetype"
																value="type4"> <label for="type4"> <img
																src="images/sample/sample3.png" alt="4번"
																style="width: 200px">
															</label> <input type="radio" id="type5" name="pagetype"
																value="type5"> <label for="type5"> <img
																src="images/sample/sample5.png" alt="5번"
																style="width: 200px">
															</label> <input type="radio" id="type6" name="pagetype"
																value="type6"> <label for="type6"> <img
																src="images/sample/sample6.png" alt="6번"
																style="width: 200px">
															</label>
														</div>
													</dd>
												</dl>
											</div>
										</td>
									</tr>
								</table>
							</div>
							<div class="tbl_bottom" style="float: right;">
								<div class="pagenation" id="pageControlMgmt"></div>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a>
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
					</div>
				</div>

			</div>
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<script>
		var selmenu = document.querySelector("#selectedmenu");
		var seldetail = document.querySelector("#selecteddetail");
		var inptname = document.querySelector("#inptcategory_name");
		var inptlink = document.querySelector("#inptcategory_link");
		var ctgrystyle = document.getElementsByClassName("category_style");
		var ctgrysample = document.getElementsByClassName("category_sample");

		var nonedellist = [ "Home", "회사 소개", "주요사업", "그룹웨어" ];

		var addhide = function() {
			for (var j = 0; j < ctgrystyle.length; j++) {
				ctgrystyle[j].classList.add("hide");
			}
			for (var j = 0; j < ctgrysample.length; j++) {
				ctgrysample[j].classList.add("hide");
			}
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
					if (selmenu.value === span.innerHTML) {
						// 이미 선택된 메뉴 클릭
						selmenu.value = "";
						addhide();
						inptname.value = "";
						inptlink.value = "";
						console.log("1")
					} else {
						// 다른거 클릭
						div.classList.add("tree-div-selected");
						ul.classList.remove("hide");
						inptname.value = "";
						inptlink.value = "";
						selmenu.value = span.innerHTML;
						console.log("2")
					}
				} else {
					if (selmenu.value === span.innerHTML) {
						// 이미 선택된 메뉴 클릭
						selmenu.value = "";
						inptname.value = "";
						inptlink.value = "";
						addhide();
						console.log("3")
					} else {
						// 다른거 클릭
						div.classList.add("tree-div-selected");
						selmenu.value = span.innerHTML;
						inptname.value = span.innerHTML;
						inptlink.value = span.getAttribute("data-link");
						console.log("4")
					}
				}
			}
			if (div.classList.contains("depth2")) {
				console.log(span.getAttribute("data-link"));
				console.log(span);
				removetds(depth2ul);
				if (seldetail.value === span.innerHTML) {
					// 이미 선택된 메뉴 클릭
					seldetail.value = "";
					inptname.value = "";
					inptlink.value = "";
					addhide();
					console.log("5")
				} else {
					// 다른거 클릭
					div.classList.add("tree-div-selected");
					for (var j = 0; j < ctgrysample.length; j++) {
						ctgrysample[j].classList.remove("hide");
					}
					console.log("asd");
					seldetail.value = span.innerHTML;
					inptname.value = span.innerHTML;
					inptlink.value = span.getAttribute("data-link");
					console.log("6")
				}
			}
		}
		document.querySelector("#tree").addEventListener("click", clicktree);
		document.getElementById("btn_addcategory").onclick = function(e) {
			console.log("add");
			console.log("selmenu" + selmenu.value);
			console.log("seldetail" + seldetail.value);
			var span = document.createElement("span");
			span.innerHTML = "새 메뉴";
			var label = document.createElement("label");
			label.append(span);
			var div = document.createElement("div");
			div.classList.add("drag-label");
			div.classList.add("list");
			console.log(li);
			if (selmenu.value == "") {
				//메뉴선택 안됨 메뉴 추가해야됨
				div.classList.add("tree-has-child");
				div.classList.add("depth1");
				div.append(label);
				var li = document.createElement("li");
				li.append(div);
				this.parentElement.parentElement.children[1].append(li);
				console.log("메뉴선택 안됨 메뉴 추가해야됨")
			} else {
				// 메뉴 선택됨 세부 항목 추가하면됨
				console.log("메뉴 선택됨 세부 항목 추가하면됨");
				div.classList.add("tree-has-child");
				div.classList.add("depth2");
				div.append(label);
				var li = document.createElement("li");
				li.classList.add("tree-node");
				li.append(div);
				var ul = document.createElement("ul");
				ul.classList.add("innerul")
				ul.append(li);
				document.querySelector(".tree-div-selected").parentElement
						.append(ul);

			}
		}
		document.getElementById("btn_delcategory").onclick = function(e) {
			document.querySelector(".tree-div-selected");
			if (nonedellist.indexOf(seldetail.value) != -1
					|| nonedellist.indexOf(selmenu.value) != -1) {
				// 삭제 안되는거 선택
				console.log("안되는거 선택");
			} else if (seldetail.value == "" && setmenu.value == "") {
				// 선택된게 없음
				console.log("선택된거 없음");
			} else {
				// 삭제
			}

			console.log("del");
		}
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
	<script src="js/scripts.js"></script>
	<script src="js/Tapcommon.js"></script>
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
</html>

