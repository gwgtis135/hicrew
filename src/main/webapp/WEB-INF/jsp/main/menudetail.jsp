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
<link rel="stylesheet" href="css/HJ_style.css">
<link rel="stylesheet" href="css/jonghyeon_style.css">
<link rel="stylesheet" href="css/nice-select.css">

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
	<!-- 모달 -->
	<button id="testBtn" class="btn">모달 테스트</button>
	<div class="modal fade" id="orgchtmodal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<button type="button" class="close" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</button>
					<h3 class="modal-title" id="exampleModalLabel">
						모달테스트
						</h5>
				</div>
				<div class="modal-body">
					<p>
						<label>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<input type="text" />
					</p>
					<p>
						<label>직급&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
						<select name="org_clsf" id="org_clsf">
							<option value="대표">대표</option>
							<option value="부장">부장</option>
							<option value="차장">차장</option>
							<option value="과장">과장</option>
							<option value="사원">사원</option>
						</select>
					</p>
					<p>
						<label>사업부서&nbsp;&nbsp;</label> <input type="text" />
					</p>
					<p>
						프로필<img class="orgcht_modal_img" alt="" src="">
					</p>
					<p>
						<span class=orgcht_modal_span> <label>&nbsp;&nbsp;</label>
							<input type="file" />
						</span>
					</p>

				</div>
				<div class="modal-footer">
					<a id="modalY" href="#" class="btn_type1 _rosRestrict">저장</a> <a
						id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a>
					<button class="btn" type="button" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 end -->
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
	<jsp:include page="nav.jsp">
		<jsp:param name="#" value="#" />
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
								<div class="inner">
									<div class="header_cont paddingLeft">
										<nav class="gnb" id="Gnb">
											<ul>
												<li class="active"><a href=""> <span>Home</span>
												</a></li>
												<li><a href="#"> <span>회사소개</span>
												</a> <span class="depth1_arrow"></span>
													<div class="depth_wrap">
														<ul>
															<li><a onclick="switchtable('cmpnyinfo')">회사개요</a></li>
															<li><a onclick="switchtable('ciintrcn')">CI소개</a></li>
															<li><a onclick="switchtable('cmpnyhist')">주요 연혁</a></li>
															<li><a onclick="switchtable('orgcht')">조직도</a></li>
															<li><a onclick="switchtable('cmpnyinfo')">오시는길</a></li>
															<li><a onclick="switchtable('photo')">포토스토리</a></li>
														</ul>
													</div></li>
												<li><a href="#"> <span>주요사업</span>
												</a> <span class="depth1_arrow"></span>
													<div class="depth_wrap">
														<ul>
															<li><a onclick="switchtable('itsolut')">PDF솔루션</a></li>
															<li><a href="">IT솔루션</a></li>
														</ul>
													</div></li>
											</ul>
										</nav>

									</div>
								</div>
							</div>
							<textarea id="intrcnment" class="" rows="5" cols="118"
								style="resize: none;" placeholder="소개문구를 적어주세요"></textarea>
							<div class="tbl board">

								<!--주요연혁 -->
								<div class="hide table" id="tblcmpnyhist">
									<div class="search_box_wrap">
										<div class="search_box_margin">

											<input type="date"> ~ <input type="date">
											<div class="search_box" id="search_box">
												<div class="sel_box">
													<select name="scolumn" id="scolumn">
														<option value="">전체</option>
														<option value="title">제목</option>
														<option value="contents">내용</option>
													</select>
												</div>
												<div class="ipt_box">
													<input id="searchIpt" name="skeyword"
														onKeyDown="onKeyDown();" value="" type="text"
														placeholder="검색어를 입력하세요"> <label for="searchIpt"
														id="search_btn">검색하기</label>
												</div>
											</div>
										</div>
									</div>
									<table>
										<colgroup>
											<col style="width: 50px">
											<col style="width: auto">
											<col style="width: 520px">
											<col style="width: 90px">
										</colgroup>
										<tbody>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>날짜 <input type="date" size="50" value="2021-10-01"></td>
												<td>연혁 내용 <input type="text" size="50"
													value="세종(4세대 ))"></td>
												<td>순서<input type="number" value="1"
													style="text-align: center; width:50px"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>날짜<input type="date" size="50" value="2020-01-01"></td>
												<td>연혁 내용 <input type="text" size="50"
													value="2018년 3월 13일"></td>
												<td>순서<input type="number" value="2"
													style="text-align: center; width:50px"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>날짜 <input type="date" size="50" value="2019-05-01"></td>
												<td>연혁 내용 <input type="text" size="50" value="이영석"></td>
												<td>순서<input type="number" value="3"
													style="text-align: center; width:50px"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>날짜 <input type="date" size="50" value="2019-01-01"></td>
												<td>연혁 내용 <input type="text" size="50"
													value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
												<td>순서<input type="number" value="4"
													style="text-align: center; width:50px"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>날짜 <input type="date" size="50" value="2018-01-02"></td>
												<td>연혁 내용 <input type="text" size="50"
													value="070-8772-1612"></td>
												<td>순서<input type="number" value="5"
													style="text-align: center; width:50px"></td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblorgcht">
									<table>
										<colgroup>
											<col style="width: 50px">
											<col style="width: auto">
										</colgroup>
										<tr>
											<th>&nbsp&nbsp&nbsp&nbsp</th>
											<th>이름</th>
											<th>직급</th>
											<th>사업부서</th>
										</tr>
										<tbody>
											<tr class="notice" onclick="orgchtmodal(event)">
												<td class="num"><input type="checkbox"></td>
												<td>이영석</td>
												<td>대표</td>
												<td>세종(4세대 나이스 구축사업)</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>이장수</td>
												<td>부장</td>
												<td>대구(2022 나이스 유지보수)</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>김동업</td>
												<td>차장</td>
												<td>세종(4세대 나이스 구축사업)</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>이상현</td>
												<td>차장</td>
												<td>세종(4세대 나이스 구축사업)</td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>이호진</td>
												<td>과장</td>
												<td>대구(2022 정보공시사업)</td>
											</tr>
										</tbody>
									</table>
								</div>


								<div class="hide table" id="tblcmpnyinfo">
									<table>
										<colgroup>
											<col style="width: 50px">
											<col style="width: auto">
											<col style="width: 520px">
											<col style="width: 90px">
										</colgroup>
										<tbody>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="(주)하이크루"></td>
												<td>항목 내용 <input type="text" size="50"
													value="High-Technology CREW System"></td>
												<td>순서<input type="number" value="1"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="설립일"></td>
												<td>항목 내용 <input type="text" size="50"
													value="2018년 3월 13일"></td>
												<td>순서<input type="number" value="2"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="대표이사"></td>
												<td>항목 내용 <input type="text" size="50" value="이영석"></td>
												<td>순서<input type="number" value="3"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="본사주소"></td>
												<td>항목 내용 <input type="text" size="50"
													value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
												<td>순서<input type="number" value="4"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="전화번호"></td>
												<td>항목 내용 <input type="text" size="50"
													value="070-8772-1612"></td>
												<td>순서<input type="number" value="5"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="사업분야"></td>
												<td>항목 내용 <input type="text" size="50"
													value="System Integration(시스템 통합구축)"></td>
												<td>순서<input type="number" value="6"
													style="text-align: center; width: 50px;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblciintrcn">
									<table>
										<colgroup>
											<col style="width: 50px">
											<col style="width: auto">
											<col style="width: 520px">
											<col style="width: 90px">
										</colgroup>
										<tbody>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="(주)하이크루"></td>
												<td>항목 내용 <input type="text" size="50"
													value="High-Technology CREW System"></td>
												<td>순서<input type="number" value="1"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="설립일"></td>
												<td>항목 내용 <input type="text" size="50"
													value="2018년 3월 13일"></td>
												<td>순서<input type="number" value="2"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="대표이사"></td>
												<td>항목 내용 <input type="text" size="50" value="이영석"></td>
												<td>순서<input type="number" value="3"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="본사주소"></td>
												<td>항목 내용 <input type="text" size="50"
													value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
												<td>순서<input type="number" value="4"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="전화번호"></td>
												<td>항목 내용 <input type="text" size="50"
													value="070-8772-1612"></td>
												<td>순서<input type="number" value="5"
													style="text-align: center; width: 50px;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td>항목 이름 <input type="text" size="20" value="사업분야"></td>
												<td>항목 내용 <input type="text" size="50"
													value="System Integration(시스템 통합구축)"></td>
												<td>순서<input type="number" value="6"
													style="text-align: center; width: 50px;"></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="hide table" id="tblitsolut">
									<table>
										<colgroup>
											<col style="width: 50px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="notice" onclick="solutmodalopen()">
												<td class="num"><input type="checkbox"></td>
												<td class="thumnail" data-imgName="neis.jpg">학생 수강 신청</td>
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
									<a id="a_remove" href="#" class="btn_type2 _rosRestrict"
										onclick="imgswitch('phototable')">게시판</a> <a id="a_remove"
										href="#" class="btn_type2 _rosRestrict"
										onclick="imgswitch('photoimage')">이미지</a>
									<table class="hide2" id="phototable">
										<colgroup>
											<col style="width: 50px">
											<col style="width: 250px">
											<col style="width: auto">
											<col style="width: auto">
											<col style="width: 250px">
										</colgroup>
										<tbody>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td onclick="photomodalopen()">거제, 바람의 언덕</td>
												<td><img class="photoimg" onclick="photomodalopen()" src="images/Crews/story1_1.jpg" alt="거제, 바람의언덕"></td>
												<td><input type = "file"></td>
												<td>이미지 순서 <input type="text" size="5" value="1"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td onclick="photomodalopen()">거제, 바람의 언덕</td>
												<td><img class="photoimg" onclick="photomodalopen()" src="images/Crews/story1_1.jpg" alt="거제, 바람의언덕"></td>
												<td><input type = "file"></td>
												<td>이미지 순서 <input type="text" size="5" value="2"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td onclick="photomodalopen()">거제, 바람의 언덕</td>
												<td><img class="photoimg" onclick="photomodalopen()" src="images/Crews/story1_1.jpg" alt="거제, 바람의언덕"></td>
												<td><input type = "file"></td>
												<td>이미지 순서 <input type="text" size="5" value="3"
													style="text-align: center;"></td>
											</tr>
											<tr class="notice">
												<td class="num"><input type="checkbox"></td>
												<td onclick="photomodalopen()">거제, 바람의 언덕</td>
												<td><img class="photoimg" onclick="photomodalopen()" src="images/Crews/story1_1.jpg" alt="거제, 바람의언덕"></td>
												<td><input type = "file"></td>
												<td>이미지 순서 <input type="text" size="5" value="4"
													style="text-align: center;"></td>
											</tr>
										</tbody>
									</table>
									<div class="slideshow-container hide2" id="photoimage">
										<div class="photorow g-5">
											<div class="col-lg-4 col-md-6">
												<div class="bg-light">
													<img class="photoimg-fluid" src="images/Crews/story1_1.jpg" alt="">
													<div class="p-4">
														<div class="d-flex justify-content-between mb-4">
															<div class="d-flex align-items-center">
																<img class="rounded-circle me-2" src="img/user.jpg" width="35" height="35" alt=""> <span>John Doe</span>
															</div>
															<div class="d-flex align-items-center">
																<span class="ms-3"><i class="far fa-calendar-alt text-primary me-2"></i>01 Jan, 2045</span>
															</div>
														</div>
														<h4 class="text-uppercase mb-3">Rebum diam clita lorem erat magna est erat</h4>
														<a class="text-uppercase fw-bold" href="">Read More <i class="bi bi-arrow-right"></i></a>
													</div>
												</div>
											</div>
											<div class="col-lg-4 col-md-6">
												<div class="bg-light">
													<img class="photoimg-fluid" src="images/Crews/story1_1.jpg" alt="">
													<div class="p-4">
														<div class="d-flex justify-content-between mb-4">
															<div class="d-flex align-items-center">
																<img class="rounded-circle me-2" src="img/user.jpg" width="35" height="35" alt=""> <span>John Doe</span>
															</div>
															<div class="d-flex align-items-center">
																<span class="ms-3"><i class="far fa-calendar-alt text-primary me-2"></i>01 Jan, 2045</span>
															</div>
														</div>
														<h4 class="text-uppercase mb-3">Rebum diam clita lorem erat magna est erat</h4>
														<a class="text-uppercase fw-bold" href="">Read More <i class="bi bi-arrow-right"></i></a>
													</div>
												</div>
											</div><div class="col-lg-4 col-md-6">
												<div class="bg-light">
													<img class="photoimg-fluid" src="images/Crews/story1_1.jpg" alt="">
													<div class="p-4">
														<div class="d-flex justify-content-between mb-4">
															<div class="d-flex align-items-center">
																<img class="rounded-circle me-2" src="img/user.jpg" width="35" height="35" alt=""> <span>John Doe</span>
															</div>
															<div class="d-flex align-items-center">
																<span class="ms-3"><i class="far fa-calendar-alt text-primary me-2"></i>01 Jan, 2045</span>
															</div>
														</div>
														<h4 class="text-uppercase mb-3">Rebum diam clita lorem erat magna est erat</h4>
														<a class="text-uppercase fw-bold" href="">Read More <i class="bi bi-arrow-right"></i></a>
													</div>
												</div>
											</div><div class="col-lg-4 col-md-6">
												<div class="bg-light">
													<img class="photoimg-fluid" src="images/Crews/story1_1.jpg" alt="">
													<div class="p-4">
														<div class="d-flex justify-content-between mb-4">
															<div class="d-flex align-items-center">
																<img class="rounded-circle me-2" src="img/user.jpg" width="35" height="35" alt=""> <span>John Doe</span>
															</div>
															<div class="d-flex align-items-center">
																<span class="ms-3"><i class="far fa-calendar-alt text-primary me-2"></i>01 Jan, 2045</span>
															</div>
														</div>
														<h4 class="text-uppercase mb-3">Rebum diam clita lorem erat magna est erat</h4>
														<a class="text-uppercase fw-bold" href="">Read More <i class="bi bi-arrow-right"></i></a>
													</div>
												</div>
											</div>
											<div class="col-12">
												<nav aria-label="Page navigation">
													<ul class="pagination pagination-lg justify-content-center m-0">
														<li class="page-item disabled"><a class="page-link rounded-0" href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
														</a></li>
														<li class="page-item active"><a class="page-link" href="#">1</a></li>
														<li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														<li class="page-item"><a class="page-link rounded-0" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
														</a></li>
													</ul>
												</nav>
											</div>
										</div>
									</div>
								</div>
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
	<script src="js/jquery.nice-select.js"></script>
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
		//조직도 모달 함수
		function orghtmodalopen(){
			console.log("orgchtmodalopen!");
			const modal = document.getElementById("orgchtmodal");
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
		function switchtable(value){
			var tatbl = "tbl"+value;
			console.log(tatbl);
			var tbllist = document.querySelectorAll(".board > .table");
			for(tbl of tbllist){
				tbl.classList.add("hide")
			}
			document.getElementById(tatbl).classList.toggle("hide");
			document.getElementById("intrcnment").value=value;
			console.log(tatbl);
		}
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

        var xOffset = 10;
        var yOffset = 30;
		$(document).on("mouseover",".thumnail",function(e){
            //var image_data = $(this).data("image");
            //var add_caption = (image_data != undefined) ? "<br/>" + image_data : "" ;
            console.log(e.target.getAttribute("data-imgName"))
            console.log(e.pageY)
            console.log(e.target.innerHTML)
            $("body").append("<p id='preview'><img src='images/"+ e.target.getAttribute("data-imgName") +"' width='400px' />"+ "</p>");
            console.log($("#preview"));
            $("#preview")
            .css("top",(e.pageY - xOffset) + "px")
            .css("left",(e.pageX + yOffset) + "px")
            .fadeIn("fast");
        });
        $(document).on("mousemove",".thumnail",function(e){
            $("#preview")
            .css("top",(e.pageY - xOffset) + "px")
            .css("left",(e.pageX + yOffset) + "px");
        });
        
        //마우스 아웃시 preview 제거
        $(document).on("mouseout",".thumnail",function(){
            //$("#preview").remove();
        });
		
		//모달 이벤트
		function orgchtmodal(e){
			console.log('orgchtmadal open!!!')
			e.preventDefault();
			$('#orgchtmodal').modal("show");
		};
	</script>
</body>
</html>

