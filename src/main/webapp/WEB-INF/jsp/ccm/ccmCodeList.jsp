
<%
	/**
 * @Class Name : EgovCcmCmmnCodeList.jsp
 * @Description : 공통코드 목록 화면
 * @Modification Information
 * @
 * @  수정일             수정자                   수정내용
 * @ -------    --------    ---------------------------
 * @ 2009.02.01   박정규              최초 생성
 *   2017.08.08   이정은              표준프레임워크 v3.7 개선
 *  @author 공통서비스팀
 *  @since 2009.02.01
 *  @version 1.0
 *  @see
 *
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>

<!DOCTYPE html>
<html>
<head>
<title>공통코드관리 페이지 <spring:message code="title.list" /></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />"> --%>
<link rel="stylesheet" href="css/cmmupendmenu/com.css">

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
<script type="text/javascript">
	/*********************************************************
	 * 초기화
	 ******************************************************** */
	function fn_egov_init() {
		// 첫 입력란에 포커스..
		document.CcmCodeForm.searchCondition.focus();
	}

	/*********************************************************
	 * 페이징 처리 함수
	 ******************************************************** */
	function fn_egov_select_linkPage(pageNo) {
		document.CcmCodeForm.pageIndex.value = pageNo;
		document.CcmCodeForm.action = "<c:url value='/sym/ccm/cca/SelectCcmCmmnCodeList.do'/>";
		document.CcmCodeForm.submit();
	}
	/*********************************************************
	 * 조회 처리 함수
	 ******************************************************** */
	function fn_egov_search_code() {
		document.CcmCodeForm.pageIndex.value = 1;
		document.CcmCodeForm.submit();
	}
	/* ********************************************************
	 * 상세회면 처리 함수
	 ******************************************************** */
	function fn_egov_inquire_codedetail(codeId) {
		// 사이트 키값(siteId) 셋팅.
		document.CcmCodeForm.codeId.value = codeId;
		document.CcmCodeForm.action = "<c:url value='/sym/ccm/cca/SelectCcmCmmnCodeDetail.do'/>";
		document.CcmCodeForm.submit();
	}
</script>
</head>
<body onload="fn_egov_init()">

	<jsp:include page="../main/nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<jsp:include page="../main/adminTap.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>

	<div id="page">
		<input type="hidden" id="selectedmenu"> <input type="hidden" id="selecteddetail">
		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row cmmrow">
					<div class="row ">
						<div class="tbl board" id="noticeGrid">
							<table>
								<colgroup>
									<col style="width: 220px">
									<col style="width: 10px">
									<col style="width: auto">
								</colgroup>
								<tr>
									<jsp:include page="../ccm/ccmlefttd.jsp">
										<jsp:param name="#" value="#" />
									</jsp:include>
									<td>
									</td>
									<td class="n_admin">
										<form name="CcmCodeForm" action="" method="post" onSubmit="">
											<div class="board">
												<h1>공통코드 목록</h1>

												<!-- 검색영역 -->
												<!-- 검색조건선택 -->
												<div class="search_box">
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
														<li>
															<input class="s_input"  name="searchKeyword" type="text" size="35" title="" maxlength="155">
															<input type="submit" class="s_btn" value="조회" title=""/> 
														</li>
													</ul>
												</div>

												<!-- 목록영역 -->
												<table class="board_list cmmTable">
												<caption>공통코드 목록</caption>
													<colgroup>
														<col style="width: 9%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
													</colgroup>
													<tbody class="ov">
														<tr>
															<td class="cmmtd">1</td>
															<td class="cmmtd"><input value="DEPT001" type="text"></td>
															<td class="cmmtd"><input value="사업부서" type="text"></td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>
															Y</td>
														</tr>
														<tr>
															<td class="cmmtd">2</td>
															<td class="cmmtd"><input value="POSI001" type="text"></td>
															<td class="cmmtd"><input value="직책" type="text"></td>
															<td class="cmmtd">Y</td>
														</tr>
													</tbody>
												</table>

												<!-- paging navigation -->
											 	<div class="pagination">
													<ul>
														<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="fn_egov_select_linkPage" />
													</ul>
												</div>

											</div>

											<input name="codeId" type="hidden" value=""> <input name="pageIndex" type="hidden" value="">
										</form>
									</td>
								</tr>
							</table>
							<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA">추가</a> <a
								id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA">저장</a>
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
							<small class="block">&copy; 대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩). 대표번호 : 070-8772-1612</small> <small class="block">COPYRIGHT©2018 BY HCSYSTEM. ALL RIGHTS RESERVED</small>
						</p>
					</div>
				</div>

			</div>
		</footer>
	</div>
</body>
</html>