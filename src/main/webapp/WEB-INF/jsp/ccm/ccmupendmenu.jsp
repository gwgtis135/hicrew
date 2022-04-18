
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
										<form name="CcmDeCodeForm" action="<c:url value='/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do'/>" method="post" onSubmit="fn_egov_search_code(); return false;">
											
											<!-- 상세코드 테이블 start  -->
											<div class="board hide tblccmCodeList">
												<h1>상세코드  목록</h1>

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
														<li>
															<input class="s_input" name="searchKeyword" type="text" size="35" title="" value="" /> 
															<input type="submit" class="s_btn" value="조회" title="" /> 
														</li>
													</ul>
												</div>

												<!-- 목록영역 -->
												<table class="board_list cmmTable" summary="">
													<caption>사업부서 상세코드 목록</caption>
													<colgroup>
														<col style="width: 9%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
														<col style="width: 40%;">
														<col style="width: 13%;">
													</colgroup>
													<thead>
														<!-- <tr>
															<th>번호</th>
															번호
															<th>코드ID</th>
															코드ID
															<th class="board_th_link">상세코드</th>
															코드
															<th>상세코드명</th>
															코드명
															<th>사용여부</th>
															사용여부
														</tr> -->
													</thead>
													<tbody class="ov">
														<tr>
															<td>1</td>
															<td> <input value="DEPT001" type="text"> </td>
															<td> <input value="REGC01" type="text"></td>
															<td>세종 (나이스 사업 구축)</td>
															<td>Y</td>
														</tr>
														<tr>
															<td>2</td>
															<td>POSI001</td>
															<td>REGC01</td>
															<td>단일 게시판 이용등록</td>
															<td>Y</td>
														</tr>
														<tr>
															<td>3</td>
															<td>POSI001</td>
															<td>REGC01</td>
															<td>단일 게시판 이용등록</td>
															<td>Y</td>
														</tr>
														<tr>
															<td>4</td>
															<td>POSI001</td>
															<td>REGC01</td>
															<td>단일 게시판 이용등록</td>
															<td>Y</td>
														</tr>
														<tr>
															<td>5</td>
															<td>POSI001</td>
															<td>REGC01</td>
															<td>단일 게시판 이용등록</td>
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
											<!-- 상세코드 테이블 end  -->
											<!-- 공통코드 테이블 목록 start -->
											
												<div class="board tblcmmUpendMenu">
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
														<col style="width: 40%;">
														<col style="width: 13%;">
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
															</td>
														</tr>
														<tr>
															<td class="cmmtd">2</td>
															<td class="cmmtd"><input value="POSI001" type="text"></td>
															<td class="cmmtd"><input value="직책" type="text"></td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>	
															</td>
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
											<!-- 공통코드 테이블 목록 end -->
											

											<input name="codeId" type="hidden" value=""> <input name="code" type="hidden" value=""> <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>">
										</form>
									</td>
								</tr>
							</table>
							<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA" onclick="addbtn()" >추가</a> <a
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
<script type="text/javascript">


	function hideTbl(e){
		var tblccmupendmenu = document.querySelector('.tblcmmUpendMenu');
		var tblccmCode= document.querySelector('.tblccmCodeList');
		var tblText = e.target.innerText;
		
		if(tblText == '공통코드관리'){
			console.log('공통코드관리');
			// 토글 : 있으면 없애고 없으면 붙인다.
			// 공통코드 관리를 눌렀을땐 공통 코드 관리 테이블에서 hide 제거
			// 동시에 상세코드 관리 테이블에 hide 추가.
			tblccmCode.classList.add('hide');
			tblccmupendmenu.classList.remove('hide');
		}
		else if(tblText == '상세코드관리'){
			console.log('상세코드관리');
			tblccmupendmenu.classList.add('hide');
			tblccmCode.classList.remove('hide');
		}
		
	}

	function addbtn(){
		console.log('추가');
		
		var select = document.createElement('select');
		var div = document.querySelectorAll('.ov');
		
		/* select 박스 */
		var optionY = document.createElement('option');
		var optionN = document.createElement('option');
		optionY.setAttribute('value','Y');
		optionN.setAttribute('value','N');
		optionY.innerText="활성화";
		optionN.innerText="비활성화";
		select.append(optionY);
		select.append(optionN);
	
		
		var tr= document.createElement('tr');
		
	for (var i = 0; i < 4; i++) {

			var td = document.createElement('td');
			td.setAttribute('class', 'cmmtd');
			if (i == 0) {
				td.innerHtml = i;
			}
			if( i ==1){
				var input = document.createElement('input');
				input.setAttribute('value','POSI001');
				input.setAttribute('type','text');
				td.append(input);
				
			}
			if(i ==2){
				var input = document.createElement('input');
				input.setAttribute('value','직책');
				input.setAttribute('type','text');
				td.append(input);
			}
			if( i ==3){
				td.append(select)
			}
			tr.append(td);
		}//for end
		div[1].append(tr);
	
	

	}
</script>
</body>
</html>