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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/HJ_style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
<!-- Theme style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jonghyeon_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_style.css">
<!-- Banner style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrapcard.min.css">
<!-- fontawesome  -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
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
				<div>
					<div class="col-md-8 col-md-offset-2 text-center gtco-heading">
						<h2>상세 메뉴 관리</h2>
					</div>
				</div>
				
				 -->
				<div class="row photo-admin-row">
					<div>
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
										<form name="CcmDeCodeForm" action="" method="post" onSubmit="">

											<!--주요연혁 -->
											<div class="hide table tblch" id="tblch">

												<!-- 검색영역 -->
												<!-- 검색조건선택 -->
												<div class="menudetailSearchbox" title="이 레이아웃은 하단 정보를 대한 검색 정보로 구성되어 있습니다.">
													<ul>
														<li><select name="searchCondition" title="">
																<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																<option selected value=''>선택하세요</option>
																<!-- 선택하세요 -->
																<option value="1">코드ID</option>
																<!-- 코드ID -->
																<option value="2">코드ID명</option>
																<!-- 코드ID명 -->
														</select></li>
														<!-- 검색키워드 및 조회버튼 -->
														<li><input class="s_input" name="searchKeyword" type="text" size="35" title="" maxlength="155"> <input type="submit" class="s_btn" value="조회" title="" /></li>
													</ul>
												</div>
												
												<div class="histTable">
													<!-- Hoverable Table rows -->

													<div id = "chAppendTable" class="table-responsive text-nowrap">
														<table id="chhTable" class="table-hover menudetailboard_list">
															<colgroup>
																<col style="width: 10%">
																<col style="width: 15%">
																<col style="width: 20%">
																<col style="width: 5%">
															</colgroup>
															<tbody id="chhhhTable" class="ov">
																
																
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</form>

										<!--조직도관리 -->
											<div class="hide table" id="tblorgcht">

												<!-- 검색영역 -->
												<!-- 검색조건선택 -->
												<div class="menudetailSearchbox" title="이 레이아웃은 하단 정보를 대한 검색 정보로 구성되어 있습니다.">
													<ul>
														<li><select name="searchCondition" title="">
																<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
															<option selected value=''>사업부서별</option>
															<option value="세종나이스구축">세종 나이스 구축</option>
															<option value="대구나이스정보공시">대구나이스 정보공시</option>
															<option value="대구유지보수">대구 유지보수</option>
															<option value="대구본부">본부</option>
														</select></li>
													
														<li><select name="searchCondition" title="">
																<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																<option selected value=''>대표</option>
																<!-- 선택하세요 -->
																<option value="부장">부장</option>
																<option value="차장">차장</option>
																<option value="과장">과장</option>
																<option value="대리">대리</option>
																<option value="사원">사원</option>
														</select></li>
														<!-- 검색키워드 및 조회버튼 -->
														<li><input class="s_input" name="searchKeyword" placeholder="이름을 검색하세요" type="text" size="35" title="" maxlength="155"> <input type="submit" class="s_btn" value="조회" title="" /></li>
													</ul>
												</div>
												
												<div class="histTable">
													<!-- Hoverable Table rows -->
													
														<div class="table-responsive text-nowrap">
															<table class="table-hover menudetailboard_list">
																<colgroup>
																	<col style="width: 3%"> <!-- 여백  -->
																	<col style="width: 15%"> <!-- 이름  -->
																	<col style="width: 15%"> <!-- 직급  -->
																	<col style="width: 15%"> <!-- 부서 -->
																	<col style="width: 5%"> <!-- 돋보기 -->
																	<col style="width: 5%"> <!-- 이미지사진 아이콘  -->
																	<col style="width: 10%">  <!-- 활성화 select -->
																</colgroup>
																<tbody class="ov">
																	<tr class="cmmtd">
																		<td></td>
																		<td class="num"><input class="orgchtNameInput"   type="text" placehoder="" value="김영석"/></td>
																		<td>
																			<select class="orgchtMainSelect" name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																					<option selected value=''>대표</option>
																					<!-- 선택하세요 -->
																					<option selected value="부장">대표</option>
																					<option value="부장">부장</option>
																					<option value="차장">차장</option>
																					<option value="과장">과장</option>
																					<option value="대리">대리</option>
																					<option value="사원">사원</option>
																			</select>
																		</td>
																		<td>
																			<select name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																				<option selected value=''>사업부서별</option>
																				<option value="세종나이스구축">세종 나이스 구축</option>
																				<option value="대구나이스정보공시">대구나이스 정보공시</option>
																				<option value="대구유지보수">대구 유지보수</option>
																				<option value="대구본부">본부</option>
																			</select>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconOne"></i>
																			</a>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconTwo"></i>
																			</a>
																		</td>
																		<td>
																			<select>
																				<option value="Y">활성화</option>
																				<option value="N">비활성화</option>
																			</select>			
																		</td>
																	</tr>
																	<tr class="cmmtd">
																		<td></td>
																		<td><input class="orgchtNameInput"  type="text" placehoder="" value="이장수"/></td>
																		<td>
																			<select class="orgchtMainSelect" name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																					<option selected value=''>대표</option>
																					<!-- 선택하세요 -->
																					
																					<option value="대표">부장</option>
																					<option selected value="부장">부장</option>
																					<option value="차장">차장</option>
																					<option value="과장">과장</option>
																					<option value="대리">대리</option>
																					<option value="사원">사원</option>
																			</select>
																		</td>
																		<td>
																			<select name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																				<option selected value=''>사업부서별</option>
																				<option value="세종나이스구축">세종 나이스 구축</option>
																				<option value="대구나이스정보공시">대구나이스 정보공시</option>
																				<option value="대구유지보수">대구 유지보수</option>
																				<option value="대구본부">본부</option>
																			</select>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconOne"></i>
																			</a>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconTwo"></i>
																			</a>
																		</td>
																		<td>
																			<select>
																				<option value="Y">활성화</option>
																				<option value="N">비활성화</option>
																			</select>			
																		</td>
																	</tr>
																	<tr class="cmmtd">
																		<td></td>
																		<td><input class="orgchtNameInput"   type="text" placehoder="" value="김동업"/></td>
																		<td>
																			<select class="orgchtMainSelect" name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																					<option selected value=''>대표</option>
																					<!-- 선택하세요 -->
																					<option value="부장">부장</option>
																					<option selected value="차장">차장</option>
																					<option value="과장">과장</option>
																					<option value="대리">대리</option>
																					<option value="사원">사원</option>
																			</select>
																		</td>
																		<td>
																			<select name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																				<option selected value=''>사업부서별</option>
																				<option value="세종나이스구축">세종 나이스 구축</option>
																				<option value="대구나이스정보공시">대구나이스 정보공시</option>
																				<option value="대구유지보수">대구 유지보수</option>
																				<option value="대구본부">본부</option>
																			</select>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconOne"></i>
																			</a>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconTwo"></i>
																			</a>
																		</td>
																		<td>
																			<select>
																				<option value="Y">활성화</option>
																				<option value="N">비활성화</option>
																			</select>			
																		</td>
																	</tr>
																	
																	<tr class="cmmtd">
																		<td></td>
																		<td><input class="orgchtNameInput"   type="text" placehoder="" value="이상현"/></td>
																		<td>
																			<select class="orgchtMainSelect" name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																					<option selected value=''>대표</option>
																					<!-- 선택하세요 -->
																					<option value="부장">부장</option>
																					<option selected value="차장">차장</option>
																					<option value="과장">과장</option>
																					<option value="대리">대리</option>
																					<option value="사원">사원</option>
																			</select>
																		</td>
																		<td>
																			<select name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																				<option selected value=''>사업부서별</option>
																				<option value="세종나이스구축">세종 나이스 구축</option>
																				<option value="대구나이스정보공시">대구나이스 정보공시</option>
																				<option value="대구유지보수">대구 유지보수</option>
																				<option value="대구본부">본부</option>
																			</select>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconOne"></i>
																			</a>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconTwo"></i>
																			</a>
																		</td>
																		<td>
																			<select>
																				<option value="Y">활성화</option>
																				<option value="N">비활성화</option>
																			</select>			
																		</td>
																	</tr>
																	<tr class="cmmtd">
																		<td></td>
																		<td><input class="orgchtNameInput"   type="text" placehoder="" value="김우현"/></td>
																		<td>
																			<select class="orgchtMainSelect" name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																					<option selected value=''>대표</option>
																					<!-- 선택하세요 -->
																					<option value="부장">부장</option>
																					<option  value="차장">차장</option>
																					<option selected value="과장">과장</option>
																					<option value="대리">대리</option>
																					<option value="사원">사원</option>
																			</select>
																		</td>
																		<td>
																			<select name="searchCondition" title="">
																					<%-- <option <c:if test="${searchVO.searchCondition == ''}">selected="selected"</c:if>><spring:message code="input.select" /></option><!-- 선택하세요 --> --%>
																				<option selected value=''>사업부서별</option>
																				<option value="세종나이스구축">세종 나이스 구축</option>
																				<option value="대구나이스정보공시">대구나이스 정보공시</option>
																				<option value="대구유지보수">대구 유지보수</option>
																				<option value="대구본부">본부</option>
																			</select>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconOne"></i>
																			</a>
																		</td>
																		<td>
																			<a class="photo-admin-btn orgchtIcon">
																				<i class="menudetailOrgchtIconTwo"></i>
																			</a>
																		</td>
																		<td>
																			<select>
																				<option value="Y">활성화</option>
																				<option value="N">비활성화</option>
																			</select>			
																		</td>
																	</tr>
																</tbody>
															</table>
															
														</div>
												</div>
											</div> 
                    <!-- hideTable end -->

										<div class="hide table" id="tblmain">
											<!-- 홈화면 -->
											<div class="slideshow-container" id="photoimage">
												<div class="photorow g-5">
													<div class="col-lg-4 col-md-6">
														<div class="bg-light">
															<img class="photoimg-fluid" src="${pageContext.request.contextPath}/images/img_bg_1.jpg"
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
															<img class="photoimg-fluid" src="${pageContext.request.contextPath}/images/img_bg_2.jpg"
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
															<img class="photoimg-fluid" src="${pageContext.request.contextPath}/images/img_bg_3.jpg"
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
											<!-- 회사 개요 -->
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
														<td><input type="text" size="20" value="(주)하이크루"></td>
														<td><input type="text" size="50"
															value="High-Technology CREW System"></td>
													</tr>
													<tr class="notice">
														<td class="num"><input class="form-check-input"
															type="checkbox"></td>
														<td><input type="text" size="20" value="설립일"></td>
														<td><input type="text" size="50" value="2018년 3월 13일"></td>
													</tr>
													<tr class="notice">
														<td class="num"><input class="form-check-input"
															type="checkbox"></td>
														<td><input type="text" size="20" value="대표이사"></td>
														<td><input type="text" size="50" value="이영석"></td>
													</tr>
													<tr class="notice">
														<td class="num"><input class="form-check-input"
															type="checkbox"></td>
														<td><input type="text" size="20" value="본사주소"></td>
														<td><input type="text" size="50"
															value="대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩)"></td>
													</tr>
													<tr class="notice">
														<td class="num"><input class="form-check-input"
															type="checkbox"></td>
														<td><input type="text" size="20" value="전화번호"></td>
														<td><input type="text" size="50"
															value="070-8772-1612"></td>
													</tr>
													<tr class="notice">
														<td class="num"><input class="form-check-input"
															type="checkbox"></td>
														<td><input type="text" size="20" value="사업분야"></td>
														<td><input type="text" size="50"
															value="System Integration(시스템 통합구축)"></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="hide table" id="tblCIintrcn">
											<!-- CI 소개 -->
											<div class="g-4 photo-admin-card">
												<div class="col-lg-6 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid" src="${pageContext.request.contextPath}/images/CI1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid" src="${pageContext.request.contextPath}/images/CI2.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="hide table" id="tblpdfsolut">
											<!-- PDF 솔루션 -->
											<div class="g-4 photo-admin-card">
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/neis.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="학생수강신청">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2"
																src="${pageContext.request.contextPath}/images/sub_business_U-sync_img3.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="U-Sync">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2"
																src="${pageContext.request.contextPath}/images/sub_business_withrun_img.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="WithLearn">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_1.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="넥사크로플랫폼 14">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_2.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="엑스플랫폼 9.2">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_3.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="마이플랫폼">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_4.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="넥스업">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_6.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="넥사크로플랫폼 17">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="hide table" id="tblitsolut">
											<!-- IT 솔루션 -->
											<div class="g-4 photo-admin-card">
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2" src="${pageContext.request.contextPath}/images/img_01.JPG" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="Ez PDF Reader2.0">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2"
																src="${pageContext.request.contextPath}/images/img_04.jpg" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="Ez PDF WorkFlow">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid2"
																src="${pageContext.request.contextPath}/images/img_03.JPG" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="Ez PDF WorkFlow(for Web)">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="hide table" id="tblphoto">
											<!-- 포토스토리 -->
											<div class="row g-4 photo-admin-card">
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s" ondrop="drop(event)"
													ondragover="allowDrop(event)">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img ondrag="drag(event)" class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory1_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="거제, 바람의 언덕">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s" ondrop="drop(event)"
													ondragover="allowDrop(event)">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img ondrag="drag(event)" class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory2_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="경주, 불국사">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s" ondrop="drop(event)"
													ondragover="allowDrop(event)">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img ondrag="drag(event)" class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory3_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="포항, 호미곷">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s" ondrop="drop(event)"
													ondragover="allowDrop(event)">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img ondrag="drag(event)" class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory4_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="팔공산, 갓바위">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory1_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="거제, 바람의 언덕">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory1_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="거제, 바람의 언덕">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory1_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="거제, 바람의 언덕">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
												<div class="col-lg-3 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="rounded shadow overflow-hidden">
														<div class="position-relative">
															<img class="img-fluid"
																src="${pageContext.request.contextPath}/images/Crews/resizestory1_1.png" alt="">
														</div>
														<div class="text-center p-4 mt-3">
															<input class="fw-bold mb-0" type="text" size="10"
																value="거제, 바람의 언덕">
															<div class="translate-middle d-flex align-items-center">
																<a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagedetail photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagefix photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a> <a
																	class="photo-admin-btn btn-square  photo-admin-card-btn-primary btn-imagesave photo-admin-card-icon"
																	href="#">
																	<div></div>
																</a>
															</div>
															<input
																class="form-check-input photo-admin-input-type-checkbox"
																type="checkbox" value="" id="defaultCheck3" checked />
															<!-- <h5 class="fw-bold mb-0">Full Name</h5> -->
														</div>
													</div>
												</div>
											</div>
										</div>
							</table>
						</div>

						<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_prev" href="#" class="btn_type1 _rosRestrict">이전</a>
							<a id="a_add" href="#" class="btn_type1 _rosRestrict">추가</a> <a
								id="a_save" href="#" class="btn_type1 _rosRestrict">저장</a> <a
								id="a_remove" href="#"
								class="btn_type1 _rosRestrict emphasisButton">삭제</a> <a
								id="a_preview" href="#"
								class="btn_type3 _rosRestrict emphasisButton">미리보기</a>
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
						aria-label="Close"></button>
					<button type="button" class="close" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

					<h3 class="modal-title" id="exampleModalLabel">모달테스트</h3>
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

	<!-- 	<div id="photomodal" class="modal">
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
	</div> -->


	<input class="form-check-input photo-admin-input-type-checkbox"
		type="checkbox">

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
	<script src="${pageContext.request.contextPath}/js/jquery.nice-select.js"></script>
	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/js/modernizr-2.6.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/scripts.js"></script>
	<script src="${pageContext.request.contextPath}/js/Tapcommon.js"></script>
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
			document.getElementById(tatbl).classList.remove("hide");
			console.log("스위치 테이블");
		}
		
		var tables = document.querySelectorAll(".table");
		
		function allhide() {
			for(var i=0;i<tables.length;i++){
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
				removetds(depth1ul);
				removetds(depth2ul);
				var inneruls = document.getElementsByClassName("innerul");
				for (var i = 0; i < inneruls.length; i++) {
					// 첫뎁스 하위 ul 태그 가리기
					inneruls[i].classList.add("hide");
				}
				if (span.innerText != "Home") {
					if (selmenu.value === span.innerText) {
						// 이미 선택된 메뉴 클릭
						console.log("1")
						selmenu.value = "";
					} else {
						// 다른거 클릭
						console.log("2")
						div.classList.add("tree-div-selected");
						selmenu.value = span.innerText;
					}
				} else {
					if (selmenu.value === span.innerText) {
						console.log("3")
						// 이미 선택된 메뉴 클릭
						selmenu.value = "";
					} else {
						// 다른거 클릭
						console.log("4");
						
						div.classList.add("tree-div-selected");
						switchtable(span.getAttribute("data-link").split(".")[0]);
						selmenu.value = span.innerText;
					}
				}
			}
			if (div.classList.contains("depth2")) {
				removetds(depth2ul);
				if (seldetail.value === span.innerText) {
					// 이미 선택된 메뉴 클릭
					seldetail.value = "";
					console.log("5")
				}  else {
					// 다른거 클릭
					div.classList.add("tree-div-selected");
					switchtable(span.getAttribute("data-link").split(".")[0])
					seldetail.value = span.innerText;		
					if(span.getAttribute("data-link").split(".")[0]=="ch"){
						console.log("3333333333333333");
						
						$.ajax({
							url:'${pageContext.request.contextPath}/ChSelectAll.do',
							contentType: "application/json",	
							dataType : 'json',
							async: false,
							success: function(datas){
								var data = JSON.parse(JSON.stringify(datas));
								console.log(data)
								var textstr = '2020-10-10'; 
								for(chdata of data.chdatas){
									
									console.log(chdata.chYn == 'Y');
									console.log(chdata.chYn);
									console.log("${chdata.chFromDate}");
									var chStr = `<tr class="cmmtd">
												<td class="num">
												<input class="form-check-input" type="checkbox" value="" id="defaultCheck3" `;
												if(chdata.chYn == 'Y'){
													chStr += `checked`;
												}
												chStr +=`/></td>
												<td>
													<input class="" type="date" value="`+chdata.chFromDate+`">
												</td>
												<td>
													<select name="">
															<option value="">세종(나이스 구축 사업)</option>
															<option>대구(나이스 유지보수 사업)</option>
															<option>대구(정보공시 2020)</option>
															<option>대구(본부)</option>
													</select>
												</td>
												<td></td>
											</tr>`;
									console.log(chdata);
									var tbody = document.querySelector('#chhhhTable');
									tbody.innerHTML += chStr;
								}// for end
							},
							error: function(){
								console.log('에러 발생')
							}
						});
					}
					console.log("7")
				}
			}
		}
		document.querySelector("#tree").addEventListener("click", clicktree);
		

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

		//모달 이벤트
		function orgchtmodal(e){
			console.log('orgchtmadal open!!!')
			console.log(e)
			e.preventDefault();
			$('#orgchtmodal').modal("show");
		};
		
		/* 포토스토린 관리 페이지 카드  드래근 앤 드롭   */
	function allowDrop(ev) {
        ev.preventDefault();
    }
	 var fromid="";
	 var fromtag; // 클릭한 이미지의 상위 div 객체 값 담을 장소
	 var temptag;
    function drag(ev) {
    	fromtag=ev.target.closest(".fadeInUp");
    	// 이미지의 상위 오브젝트(class fadeInUp) 저장
        ev.dataTransfer.setData("text", ev.target.id);
//     	??
    }
 
    function drop(ev) {
    	console.log(fromtag);
    	console.log(ev.target.closest(".fadeInUp"));
    	console.log(fromtag==ev.target.closest(".fadeInUp"));
    	console.log(1==1);
        var data = ev.dataTransfer;
        // ??
        var et=ev.target.closest(".fadeInUp");
        temptag=et;
        et.appendChild(fromtag.querySelector("div"));
        fromtag.appendChild(temptag.querySelector("div"));
        fromtag="";
        // 이미지 상위 오브젝트(class fadeInUp) 의 하위 div를 목적지에 추가
/*         ev.target.appendChild(document.getElementById(fromid)); */
    }
	window.onload=function(){
		if("${FLAG }" == "true"){
			loadpage();
		}else if("${UpendFlag }" == "true"){
			if(confirm("작업 하던 페이지를 불러오시겠습니까?")){
				loadpage();
			}
		}
	}
	
	var alink = document.querySelectorAll("a");
	
	for(var i = 0;i<alink.length;i++){
	    alink[i].addEventListener("click",function(e){
	        if(confirm("페이지 이동시 작업중인 데이터가 모두 초기화 됩니다. 이동하시겠습니까?")){
	        }else{
	            e.preventDefault();
	        }
	    });
	}
	</script>
</body>
</html>
