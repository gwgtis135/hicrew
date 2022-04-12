<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="css/nice-select.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/jonghyeon_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="css/event_style.css">
<link rel="stylesheet" href="css/bootstrapcard.min.css">
<!-- fontawesome  -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" />
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<input type="hidden" id="selectedmenu">
	<input type="hidden" id="selecteddetail">
	<div class="gtco-loader"></div>
	<jsp:include page="nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<jsp:include page="adminTap.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<div class="gtco-section-overflow">

		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<!-- 
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>상세 메뉴 관리</h2>
					</div>
				</div>
				
				 -->
				<div class="row photo-admin-row">
					<div class="row">
						<div class="tbl board">

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
										<!--주요연혁 -->
										<div class="hide table" id="tblch">
											<div class="row">
												<div class="col-md-2">
													<div class="sel_box">
														<select class="histselect form-select" name="scolumn"
															id="scolumn">
															<option value="">전체기간</option>
															<option value="2022">2022</option>
															<option value="2021">2021</option>
															<option value="2020">2020</option>
															<option value="2019">2019</option>
															<option value="2018">2018</option>
														</select>
													</div>
												</div>
											</div>
											<div class="histTable">
												<!-- Hoverable Table rows -->
												<div class="card">
													<div class="table-responsive text-nowrap">
														<table class="table-hover">
															<colgroup>
																<col style="width: 100px">
																<col style="width: 150px">
																<col style="width: 300px">
															</colgroup>
															<tbody class="table-border-bottom-0">
																<tr>
																	<td class="num"><input class="form-check-input"
																		type="checkbox" value="" id="defaultCheck3" checked /></td>
																	<td><input class="history-admin-input-checkbox"
																		type="date" value="2020-01-01"></td>
																	<td><input class="history-admin-input-text"
																		type="text" value="세종(4세대 ))"></td>
																</tr>
																<tr>
																	<td class="num"><input class="form-check-input"
																		type="checkbox" value="" id="defaultCheck3" checked /></td>
																	<td><input class="history-admin-input-checkbox"
																		type="date" value="2020-01-01"></td>
																	<td><input class="history-admin-input-text"
																		type="text" value="세종(4세대 ))"></td>
																</tr>
																<tr>
																	<td class="num"><input class="form-check-input"
																		type="checkbox" value="" id="defaultCheck3" checked /></td>
																	<td><input class="history-admin-input-checkbox"
																		type="date" value="2020-01-01"></td>
																	<td><input class="history-admin-input-text"
																		type="text" value="세종(4세대 ))"></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
												<!--/ Hoverable Table rows -->
											</div>
										</div>

										<div class="hide table" id="tblorgcht">
											<div class="row">
												<div class="col-md-2">
													<div class="orgcht-select">
														<select class="histselect form-select "
															name="orgchtdeptcolumn" id="orgchtdeptcolumn">
															<option value="">사업부서별</option>
															<option value="세종나이스구축">세종 나이스 구축</option>
															<option value="대구나이스정보공시">대구나이스 정보공시</option>
															<option value="대구유지보수">대구 유지보수</option>
															<option value="대구본부">본부</option>
														</select>

													</div>
												</div>
												<div class="col-md-1"></div>
												<div class="col-md-2">
													<select class="histselect form-select "
														name="orgchtclsfcolumn" id="orgchtclsfcolumn">
														<option value="대표">대표</option>
														<option value="부장">부장</option>
														<option value="차장">차장</option>
														<option value="과장">과장</option>
														<option value="대리">대리</option>
														<option value="사원">사원</option>
													</select>
												</div>
												<div class="col-md-2">
													<label for="html5-text-input "
														class="col-form-label fontlabel">이름</label> <input
														class="history-admin-input-text" name="orgchtnamecolumn"
														id="orgchtnamecolumn" type="text">
												</div>
												<div class="col-md-2">
													<a href="#" id="btn_ok" class="btncommon btn_select">조회</a>
												</div>
											</div>
											<div class="histTable">
												<!-- Hoverable Table rows -->
												<div class="card">
													<div class="table-responsive text-nowrap">
														<table class="table-hover">
															<colgroup>
																<col style="width: 50px">
																<col style="width: auto">
															</colgroup>
															<tbody>
																<tr class="notice">
																	<td class="num"><input type="checkbox"></td>
																	<td onclick="orgchtmodal(event)">이영석</td>
																	<td onclick="orgchtmodal(event)">대표</td>
																	<td onclick="orgchtmodal(event)">세종(4세대 나이스 구축사업)</td>
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
												</div>
												<!--/ Hoverable Table rows -->
											</div>
										</div>

										<div class="hide table" id="tblhome1">
											<div class="slideshow-container" id="photoimage">
												<div class="photorow g-5">

													<div class="col-lg-4 col-md-6">
														<div class="bg-light">
															<img class="photoimg-fluid" src="images/img_bg_1.jpg"
																alt="">
															<div class="p-4">
																<div class="d-flex justify-content-between mb-4">
																	<div class="d-flex align-items-center">
																		<span> 이미지 순서 <input type="text" size="5"
																			value="1" style="text-align: center;">
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-lg-4 col-md-6">
														<div class="bg-light">
															<img class="photoimg-fluid" src="images/img_bg_2.jpg"
																alt="">
															<div class="p-4">
																<div
																	class="d-flex justify-content-between mb-4 homeImageRadio">
																	<div class="d-flex align-items-center">
																		<input type="radio" name="" value="">
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-lg-4 col-md-6">
														<div class="bg-light">
															<img class="photoimg-fluid" src="images/img_bg_3.jpg"
																alt="">
															<div class="p-4">
																<div
																	class="d-flex justify-content-between mb-4 homeImageRadio">
																	<div class="d-flex align-items-center">
																		<input class="homeImageRadio" type="radio" name=""
																			value="">
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="col-12">
														<nav aria-label="Page navigation">
															<ul
																class="pagination pagination-lg justify-content-center m-0">
																<li class="page-item disabled"><a
																	class="page-link rounded-0" href="#"
																	aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
																		<span class="sr-only">Previous</span>
																</a></li>
																<li class="page-item active"><a class="page-link"
																	href="#">1</a></li>
																<!-- <li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#">3</a></li>
														 -->
																<li class="page-item"><a
																	class="page-link rounded-0" href="#" aria-label="Next">
																		<span aria-hidden="true">&raquo;</span> <span
																		class="sr-only">Next</span>
																</a></li>
															</ul>
														</nav>
													</div>
												</div>
											</div>
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
														<td>항목 이름 <input type="text" size="20"
															value="(주)하이크루"></td>
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
										<div class="hide table" id="tblCIintrcn">
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
														<td>항목 이름 <input type="text" size="20"
															value="(주)하이크루"></td>
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
									<div class="row g-4 photo-admin-card">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                   <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="images/Crews/resizestory1_1.png" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                            	<input class="fw-bold mb-0" type="text" size="10" value="거제, 바람의 언덕">
                                <div class="translate-middle d-flex align-items-center">
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon" href="#">
                                    	<div class="fa-duotone"></div>
                                    </a>
                                    <a class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon" href="#">
                                    	<div></div>
                                    </a>
                                </div>
                                <!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
                            </div>
                        </div>
                    </div>
                </div>
									</table>
											<!-- 
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
								 -->
										</div>
									</td>
								</tr>
							</table>

							<div class="tbl_bottom" style="float: right;">
								<div class="pagenation" id="pageControlMgmt"></div>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">추가</a>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a>
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict emphasisButton">삭제</a>
								<a id="a_remove" href="#" class="btn_type3 _rosRestrict emphasisButton">미리보기</a>
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
	<!-- <button id="testBtn" class="btn">모달 테스트</button> -->
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
	<input type="checkbox">

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
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/Tapcommon.js"></script>
	<script>
	var selmenu = document.querySelector("#selectedmenu");
	var seldetail = document.querySelector("#selecteddetail");

	function removetds(target) {
		for (var i = 0; i < target.length; i++) {
			target[i].classList.remove("tree-div-selected");
		}
	}
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
			document.getElementById(tatbl).classList.remove("hide");
			document.getElementById("intrcnment").value=value;
			console.log(tatbl);
		}
		
		var tables = document.querySelectorAll(".table");
		
		function allhide() {
				console.log(tables);
			for(var i=0;i<tables.length;i++){
				console.log(tables[i]);
				tables[i].classList.add("hide");
			}
		}

		function clicktree(event) {
			var span = event.target.querySelector("span") ? event.target
					.querySelector("span") : event.target;
			var div = span.closest("div");
			var depth1ul = document.getElementsByClassName("depth1");
			var depth2ul = document.getElementsByClassName("depth2");
			allhide();
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
						console.log("3")
					} else {
						// 다른거 클릭
						div.classList.add("tree-div-selected");
						switchtable(span.getAttribute("data-link").split(".")[0]);
						selmenu.value = span.innerText;
						console.log("4")
					}
				}
			}
			if (div.classList.contains("depth2")) {
				console.log(span.getAttribute("data-link").split(".")[0]);
				removetds(depth2ul);
				if (seldetail.value === span.innerText) {
					// 이미 선택된 메뉴 클릭
					seldetail.value = "";
					console.log("5")
				}  else {
					// 다른거 클릭
					div.classList.add("tree-div-selected");
					console.log("asd");
					switchtable(span.getAttribute("data-link").split(".")[0])
					seldetail.value = span.innerText;
					console.log("7")
				}
			}
		}
		document.querySelector("#tree").addEventListener("click", clicktree);
		
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

/*         var xOffset = 10;
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
        }); */
		
		//모달 이벤트
		function orgchtmodal(e){
			console.log('orgchtmadal open!!!')
			e.preventDefault();
			$('#orgchtmodal').modal("show");
		};
	</script>
</body>
</html>

