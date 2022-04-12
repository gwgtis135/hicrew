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

dd.category_sample, dd.category_style, dd.category_intrcn {
	display: inline;
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

.imgsample {
	width: 150px;
}

.imgstyle {
	width: 200px;
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
		<input type="hidden" id="selectedmenu"> 
		<input type="hidden" id="selecteddetail">
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
												<dt class="category_name">페이지 명</dt>
												<dd class="category_name">
													<input type="text" id="inptcategory_name">
												</dd>
												<dt class="category_link">페이지 주소</dt>
												<dd class="category_link">
													<input type="text" id="inptcategory_link">
												</dd>
												<dt class="category_intrcn">페이지 문구</dt>
												<dd class="category_intrcn">
													<textarea id="intrcnment" name="nttCn" class="" rows="5"
														cols="118" style="resize: none;" placeholder="소개문구를 적어주세요"></textarea>
													<ckeditor:replace replace="nttCn"
														basePath="${pageContext.request.contextPath}/html/egovframework/com/cmm/utl/ckeditor/" />
												</dd>
												<dt class="category_sample hide">페이지 샘플</dt>
												<dd class="category_sample hide">
													<div>
														<input type="radio" id="type1" name="pagetype"
															value="type1"> <label for="type1"> <img
															src="images/sample/sample1.png" alt="1번" class="imgstyle">
														</label> <input type="radio" id="type2" name="pagetype"
															value="type2"> <label for="type2"> <img
															src="images/sample/sample2.png" alt="2번" class="imgstyle">
														</label>
													</div>
												</dd>
												<dt class="category_style hide">페이지 스타일</dt>
												<dd class="category_style hide">
													<div>
														<input type="radio" id="type1" name="pagetype"
															value="type1"> <label for="type1"> <img
															src="images/sample/sample1.png" alt="1번"
															class="imgsample">
														</label> <input type="radio" id="type2" name="pagetype"
															value="type2"> <label for="type2"> <img
															src="images/sample/sample2.png" alt="2번"
															class="imgsample">
														</label> <input type="radio" id="type3" name="pagetype"
															value="type3"> <label for="type3"> <img
															src="images/sample/sample3.png" alt="3번"
															class="imgsample">
														</label> <br> <input type="radio" id="type4" name="pagetype"
															value="type4"> <label for="type4"> <img
															src="images/sample/sample3.png" alt="4번"
															class="imgsample">
														</label> <input type="radio" id="type5" name="pagetype"
															value="type5"> <label for="type5"> <img
															src="images/sample/sample5.png" alt="5번"
															class="imgsample">
														</label> <input type="radio" id="type6" name="pagetype"
															value="type6"> <label for="type6"> <img
															src="images/sample/sample6.png" alt="6번"
															class="imgsample">
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
							<a id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a> <a
								id="a_remove" href="#" class="btn_type3 _rosRestrict">미리보기</a>
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
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
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
	<!--  ck 에디터 적용 -->
	<script type="text/javascript"
		src="<c:url value='/html/egovframework/com/cmm/utl/ckeditor/ckeditor.js'/>"></script>
	<script>
		var selmenu = document.querySelector("#selectedmenu");
		var seldetail = document.querySelector("#selecteddetail");
		var inptname = document.querySelector("#inptcategory_name");
		var inptlink = document.querySelector("#inptcategory_link");
		var ctgrystyle = document.getElementsByClassName("category_style");
		var ctgrysample = document.getElementsByClassName("category_sample");
		var ctgryintrcn = document.getElementsByClassName("category_intrcn");

		var nonedellist = [ "Home", "회사 소개", "주요사업", "그룹웨어", "회사 개요", "CI 소개",
				"주요 연혁", "조직도", "오시는 길", "포토스토리", "pdf솔루션", "it솔루션" ];

		var addhide = function() {
			for (var j = 0; j < ctgrystyle.length; j++) {
				ctgrystyle[j].classList.add("hide");
			}
			for (var j = 0; j < ctgrysample.length; j++) {
				ctgrysample[j].classList.add("hide");
			}
			for (var j = 0; j < ctgryintrcn.length; j++) {
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
					addhide();
					inptname.value = "";
					inptlink.value = "";
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
						inptname.value = "";
						inptlink.value = "";
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
					inptname.value = "";
					inptlink.value = "";
					addhide();
					console.log("5")
				} else if (div.getAttribute("data-delable") == 0) {
					div.classList.add("tree-div-selected");
					addhide();
					for (var j = 0; j < ctgrystyle.length; j++) {
						ctgrystyle[j].classList.remove("hide");
					}
					seldetail.value = span.innerText;
					inptname.value = span.innerText;
					inptlink.value = span.getAttribute("data-link");
					console.log("6")

				} else {
					// 다른거 클릭
					div.classList.add("tree-div-selected");
					for (var j = 0; j < ctgrysample.length; j++) {
						ctgrysample[j].classList.remove("hide");
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
			div.classList.add("drag-label");
			div.classList.add("list");
			console.log(li);
			if (selmenu.value == "") {
				//메뉴선택 안됨 메뉴 추가해야됨
				div.classList.add("tree-has-child");
				div.classList.add("depth1");
				div.setAttribute("data-delable", "0");
				div.append(label);
				var li = document.createElement("li");
				li.append(div);
				this.parentElement.parentElement.children[1].append(li);
				console.log("메뉴선택 안됨 메뉴 추가해야됨")
			} else {
				// 메뉴 선택됨 세부 항목 추가하면됨
				span.innerText = "새 페이지";
				console.log("메뉴 선택됨 세부 항목 추가하면됨");
				div.classList.add("tree-has-child");
				div.classList.add("depth2");
				div.setAttribute("data-delable", "0");
				div.append(label);
				var li = document.createElement("li");
				li.classList.add("tree-node");
				li.append(div);
				var ul = document.createElement("ul");
				ul.classList.add("innerul");
				ul.append(li);
				document.querySelector(".tree-div-selected").parentElement
						.append(ul);

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
					selmenu.value = "";
					inptname.value = "";
					inptlink.value = "";
					addhide();
					selected[0].remove();
				}
			} else {
				if (selected[1].getAttribute("data-delable") == 2) {
					// 선택된 항목이 지우면 안되는 리스트에 포함되 있음.
					console.log("항목 삭제 하면 안됨");
					alert("삭제 할 수 없는 페이지 입니다.");
				} else {
					console.log("항목 삭제하면 됨");
					selmenu.value = "";
					inptname.value = "";
					inptlink.value = "";
					addhide();
					selected[1].remove();
				}
			}
			console.log("del");
		}

		// D&D
		$("#tree").sortable();
		$("#tree").disableSelection();
		$(".innerul").sortable();
		$(".innerul").disableSelection();
	</script>
</html>

