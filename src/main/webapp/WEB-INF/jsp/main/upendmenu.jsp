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
<link rel="stylesheet" href="css/HJ_style.css">
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
	/*font-size: 1rem;*/
	font-weight: 400;
	vertical-align: top;
}
label{
	font-weight:normal;
}
.tree-selected div label{
	font-weight:bold;
}
.tree-div-selected{
	color:orange;
	background:gray;
}
</style>
</head>
<body>

	<div class="gtco-loader"></div>

	<div id="page">
		<jsp:include page="nav.jsp">
			<jsp:param name="#" value="#" />
		</jsp:include>
		<jsp:include page="adminTap.jsp">
			<jsp:param name="#" value="#" />
		</jsp:include>
<input type="hidden" id="selectedmenu">
<input type="hidden" id="selecteddetail">
		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
			<!-- 
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>상단 메뉴 관리</h2>
					</div>
				</div>
			-->
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
										<col style="width: 220px">
										<col style="width: 750px">
									</colgroup>
									<tr>
										<td style="vertical-align: top;">
											<div class="list_btn">
												<a href="#" class="btn_type1" id="btn_addcategory">추가</a> 
												<a href="#" class="btn_type1" id="btn_delcategory">삭제</a>
											</div>
											<ul>
												<li><label><span>HOME</span></label></li>
												<li>
													<div class="drag-label list tree-has-child" tabindex="0">
														<label><span>회사 소개</span></label>
													</div>
													<ul class="hide">
														<li class="tree-node">
															<div class="list drag-label"
																tabindex="0">
																<label><span>회사 개요</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>CI 소개</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>주요 연혁</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>조직도</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>오시는 길</span></label>
															</div>
														</li>
														<li class="">
															<div class="list drag-label" tabindex="0">
																<label><span>포토스토리</span></label>
															</div>
														</li>
													</ul>
												</li>
												<li>
													<div class="drag-label list tree-has-child" tabindex="0">
														<label><span>주요 사업</span></label>
													</div>
													<ul class="hide">
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>pdf 솔루션</span></label>
															</div>
														</li>
														<li class="tree-node">
															<div class="list drag-label" tabindex="0">
																<label><span>it 솔루션</span></label>
															</div>
														</li>
													</ul>
												</li>
												<li><label><span>그룹웨어</span></label></li>
											</ul>
										</td>
										<td class="n_admin">
											<div class="category_add">
												<dl>
													<dt class="category_name">항목 명</dt>
													<dd class="category_name">
														<input type="text">
													</dd>
													<dt class="category_link">항목 주소</dt>
													<dd class="category_link">
														<input type="text">
													</dd>
													<dt class="category_sample hide">항목 샘플</dt>
													<dd class="category_sample hide">
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
													<dt class="category_style hide">항목 샘플</dt>
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
							<!-- 
							<div class="tbl board" id="noticeGrid">
								<table>
									<colgroup>
										<col style="width: 95px">
										<col style="width: auto">
										<col style="width: auto">
										<col style="width: auto">
										<col style="width: 350px">
										<col style="width: 50px">
									</colgroup>
									<tbody>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="20" value="Home"></td>
											<td></td>
											<td>메뉴 링크 <input type="text" size="50" value="home"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="1"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="20" value="회사 소개"></td>
											<td></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="cmpnyintrcn"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="2"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>├</td>
											<td>항목 이름<input type="text" value="회사 개요"></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="cmpnyinfo.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="1"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>├</td>
											<td>항목 이름<input type="text" value="CI 소개"></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="CIintrcn.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="2"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>├</td>
											<td>항목 이름<input type="text" value="주요 연혁"></td>
											<td>메뉴 링크 <input type="text" size="50" value="ch.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="3"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>├</td>
											<td>항목 이름<input type="text" value="조직도"></td>
											<td>메뉴 링크 <input type="text" size="50" value="orgcht.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="4"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>├</td>
											<td>항목 이름<input type="text" value="오시는길"></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="recruitment.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="5"></td>
										</tr>
										<tr>
											<td class="num"><input type="checkbox"></td>
											<td>└</td>
											<td>항목 이름<input type="text" value="포토스토리"></td>
											<td>메뉴 링크 <input type="text" size="50" value="photo.do"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="6"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="20" value="주요 사업"></td>
											<td></td>
											<td>메뉴 링크 <input type="text" size="50" value="mainbsns"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="3"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="20" value="그룹웨어"></td>
											<td></td>
											<td>메뉴 링크 <input type="text" size="50"
												value="gw.hicrew.kr"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="4"></td>
										</tr>
										<tr class="notice">
											<td class="num"><input type="checkbox"></td>
											<td>메뉴 이름 <input type="text" size="20" value="페이지 관리"></td>
											<td></td>
											<td>메뉴 링크 <input type="text" size="50" value="adminPage"></td>
											<td></td>
											<td class="num">메뉴 순서 <input type="number"
												style="text-align: center; width: 50px;" value="5"></td>
										</tr>
									</tbody>
								</table>
							</div>
 -->
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
	<script>
		var thclist = document.getElementsByClassName("tree-has-child");
		for(thc in thclist){
			thclist[thc].onclick=function(e){
				document.getElementById("selectedmenu").value=this.children[0].children[0].innerHTML;
				document.getElementById("selecteddetail").value="";
				for(var i =0;i<thclist.length;i++){
					thclist[i].classList.remove("tree-div-selected");
					thclist[i].parentElement.children[1].classList.add("hide");
				}
				this.parentElement.children[1].classList.remove("hide");
				this.classList.add("tree-div-selected");
			}
		}
		document.getElementById("btn_addcategory").onclick=function(e){
		    console.log(e);
		}
		document.getElementById("btn_delcategory").onclick=function(e){
		    console.log("asd");
		    console.log(e);
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaJn5dOYYIsz2VCh0P45LwOmVTfXOau8A&language=en&sensor=false"></script>
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/Tapcommon.js"></script>
</body>
</html>

