
<%
	/**
* @Class Name : EgovCcmCmmnDetailCodeList.jsp
* @Description : 공통상세코드 목록 화면
* @Modification Information
* @
* @  수정일             수정자                   수정내용
* @ -------    --------    ---------------------------
* @ 2009.02.01   박정규              최초 생성
*   2017.08.31   이정은              표준프레임워크 v3.7 개선
*  @author 공통서비스팀
*  @since 2009.02.01
*  @version 1.0
*  @see
*
*/
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<c:set var="pageTitle">
	<spring:message code="comSymCcmCde.cmmnDetailCodeVO.title" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<title>${pageTitle}<spring:message code="title.list" /></title>
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
		document.CcmDeCodeForm.searchCondition.focus();
	}

	/*********************************************************
	 * 페이징 처리 함수
	 ******************************************************** */
	function fn_egov_select_linkPage(pageNo) {
		document.CcmDeCodeForm.pageIndex.value = pageNo;
		document.CcmDeCodeForm.action = "<c:url value='/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do'/>";
		document.CcmDeCodeForm.submit();
	}
	/*********************************************************
	 * 조회 처리 함수
	 ******************************************************** */
	function fn_egov_search_code() {
		document.CcmDeCodeForm.pageIndex.value = 1;
		document.CcmDeCodeForm.submit();
	}
	/* ********************************************************
	 * 상세회면 처리 함수
	 ******************************************************** */
	function fn_egov_inquire_codedetail(codeId, code) {
		// 사이트 키값(siteId) 셋팅.
		document.CcmDeCodeForm.codeId.value = codeId;
		document.CcmDeCodeForm.code.value = code;
		document.CcmDeCodeForm.action = "<c:url value='/sym/ccm/cde/SelectCcmCmmnDetailCodeDetail.do'/>";
		document.CcmDeCodeForm.submit();
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
				<div class="row">
					<div class="row">
						<div class="tbl board" id="noticeGrid">
							<table>
								<colgroup>
									<col style="width: 220px">
									<col style="width: auto">
								</colgroup>
								<tr>
									<jsp:include page="../ccm/ccmlefttd.jsp">
										<jsp:param name="#" value="#" />
									</jsp:include>
									<td class="n_admin">
										<form name="CcmDeCodeForm" action="<c:url value='/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do'/>" method="post" onSubmit="fn_egov_search_code(); return false;">
											<div class="board">
												<h1>사업부서 상세코드 목록</h1>

												<!-- 검색영역 -->
												<!-- 검색조건선택 -->
												<div class="search_box" title="이 레이아웃은 하단 정보를 대한 검색 정보로 구성되어 있습니다.">
													<ul>
														<li><select name="searchCondition" title="선택하세요">
																<option selected value=''>선택하세요</option>
																<!-- 선택하세요 -->
																<option value="1">코드ID</option>
																<!-- 코드ID -->
																<option value="2">상세코드</option>
																<!-- 상세코드-->
																<option value="3">상세코드명</option>
																<!-- 상세코드명 -->
														</select></li>
														<!-- 검색키워드 및 조회버튼 -->
														<li><input class="s_input" name="searchKeyword" type="text" size="35" title="" value="" /> <input type="submit" class="s_btn" value="조회" title="" /> <span class="btn_b"><a href="<c:url value='/sym/ccm/cde/RegistCcmCmmnDetailCodeView.do' />">등록</a></span></li>
													</ul>
												</div>

												<!-- 목록영역 -->
												<table class="board_list" summary="">
													<caption>사업부서 상세코드 목록</caption>
													<colgroup>
														<col style="width: 9%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
													</colgroup>
													<thead>
														<tr>
															<th>번호</th>
															<!-- 번호 -->
															<th>코드ID</th>
															<!-- 코드ID -->
															<th class="board_th_link">상세코드</th>
															<!-- 코드 -->
															<th>상세코드명</th>
															<!-- 코드명 -->
															<th>사용여부</th>
															<!-- 사용여부 -->
														</tr>
													</thead>
													<tbody class="ov">

														<tr>
															<!-- <td colspan="5"><spring:message code="common.nodata.msg" /></td> -->
														</tr>


														<tr>
															<td>1</td>
															<td>COM001</td>
															<td>REGC01</td>
															<td><a>단일 게시판 이용등록</a></td>
															<td>Y</td>
														</tr>
														<tr>
															<td>1</td>
															<td>COM001</td>
															<td>REGC01</td>
															<td><a>단일 게시판 이용등록</a></td>
															<td>Y</td>
														</tr>
														<tr>
															<td>1</td>
															<td>COM001</td>
															<td>REGC01</td>
															<td><a>단일 게시판 이용등록</a></td>
															<td>Y</td>
														</tr>
														<tr>
															<td>1</td>
															<td>COM001</td>
															<td>REGC01</td>
															<td><a>단일 게시판 이용등록</a></td>
															<td>Y</td>
														</tr>
														<tr>
															<td>1</td>
															<td>COM001</td>
															<td>REGC01</td>
															<td><a>단일 게시판 이용등록</a></td>
															<td>Y</td>
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

											<input name="codeId" type="hidden" value=""> <input name="code" type="hidden" value=""> <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>">
										</form>
									</td>
								</tr>
							</table>
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