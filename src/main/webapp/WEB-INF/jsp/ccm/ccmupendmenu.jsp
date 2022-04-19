
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
<title>공통코드관리</title>
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
														<col style="width: 20%;">
														<col style="width: 20%;">
														<col style="width: 20%;">
														<col style="width: 20%;">
														<col style="width: 20%;">
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
															<td class="cmmtd">1</td>
															<td class="cmmtd">
															   <select>
																	<option value="DEPT001">DEPT001/사업부서</option>
																	<option value="POSI001">POSI001/직급</option>
																</select>
															</td>
															<td class="cmmtd"><input value="REGC01" type="text"></td>
															<td class="cmmtd">세종 (나이스 사업 구축)</td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>	
															</td>
														</tr>
														<tr>
															<td class="cmmtd">2</td>
															<td class="cmmtd"><select>
																	<option value="DEPT001">DEPT001/사업부서</option>
																	<option value="POSI001">POSI001/직급</option>
																</select>
															</td>
															<td class="cmmtd"><input value="REGC01" type="text"></td>
															<td class="cmmtd">대구 (정보공시 2020)</td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>	
															</td>
														</tr>
														<tr>
															<td class="cmmtd">3</td>
															<td class="cmmtd"><select>
																	<option value="DEPT001">DEPT001/사업부서</option>
																	<option value="POSI001">POSI001/직급</option>
																</select>
															</td>
															<td class="cmmtd"><input value="REGC01" type="text"></td>
															<td class="cmmtd">대구 (나이스 유지보수)</td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>	
															</td>
														</tr>
														<tr>
															<td class="cmmtd">4</td>
															<td class="cmmtd">
																<select>
																	<option value="DEPT001">DEPT001/사업부서</option>
																	<option value="POSI001">POSI001/직급</option>
																</select>
															</td>
															<td class="cmmtd"><input value="REGC01" type="text"></td>
															<td class="cmmtd">대구 본사</td>
															<td class="cmmtd">
																<select>
																	<option value="Y">활성화</option>
																	<option value="N">비활성화</option>
																</select>	
															</td>
														</tr>
														<tr>
															<td class="cmmtd">5</td>
															<td class="cmmtd">
																<select>
																	<option value="DEPT001">DEPT001/사업부서</option>
																	<option value="POSI001" selected>POSI001/직급</option>
																</select>
															</td>
															<td class="cmmtd"><input value="POSI01" type="text"></td>
															<td class="cmmtd">대표</td>
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
														<col style="width: 20%;">
														<col style="width: 26%;">
														<col style="width: 26%;">
														<col style="width: 26%;">
													</colgroup>
													<tbody class="ov">
														<tr id="Trclick">
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
														<tr id="Trclick">
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
	/* 공통코드관리 상세코드관리의 추가 버튼 구분하기  */
	var flag=0;

	function hideTbl(e){
		var tblccmupendmenu = document.querySelector('.tblcmmUpendMenu');
		var tblccmCode= document.querySelector('.tblccmCodeList');
		var tblText = e.target.innerText;
		
		if(tblText == '공통코드관리'){
			console.log('공통코드관리');
			flag = 0;
			console.log('falg 변수 값 ')
			console.log(flag)
			// 토글 : 있으면 없애고 없으면 붙인다.
			// 공통코드 관리를 눌렀을땐 공통 코드 관리 테이블에서 hide 제거
			// 동시에 상세코드 관리 테이블에 hide 추가.
			tblccmCode.classList.add('hide');
			tblccmupendmenu.classList.remove('hide');
		}
		else if(tblText == '상세코드관리'){
			flag =1;
			console.log('falg 변수 값 ')
			console.log(flag)
			console.log('상세코드관리');
			tblccmupendmenu.classList.add('hide');
			tblccmCode.classList.remove('hide');
		}
		
	}
	
	

	function addbtn() {
		console.log('falg 변수 값 ')
		console.log(flag)
		if (flag == 0) {

			var select = document.createElement('select');
			var div = document.querySelectorAll('.ov');

			/* select 박스 */
			var optionY = document.createElement('option');
			var optionN = document.createElement('option');
			optionY.setAttribute('value', 'Y');
			optionN.setAttribute('value', 'N');
			optionY.innerText = "활성화";
			optionN.innerText = "비활성화";
			select.append(optionY);
			select.append(optionN);

			var tr = document.createElement('tr');
			
			
			/* 순번 체크 변수 */
			var ccmdiv = document.querySelectorAll('.board_list'); //공통코드 테이블 div
			var ccmtbody = ccmdiv[1].querySelectorAll('tbody');
			var ccmtfirstTbody = ccmtbody[0];
			var ccmLastTr = ccmtfirstTbody.lastElementChild;
			var ccmFirstTd = ccmLastTr.firstElementChild;
			var num = ccmFirstTd.innerText;

			for (var i = 0; i < 4; i++) {

				var td = document.createElement('td');
				td.setAttribute('class', 'cmmtd');
				if (i == 0) {
					num = parseInt(num) + 1;
					td.innerText = num;

				}
				if (i == 1) {
					var input = document.createElement('input');
					input.setAttribute('type', 'text');
					td.append(input);

				}
				if (i == 2) {
					var input = document.createElement('input');
					input.setAttribute('type', 'text');
					td.append(input);
				}
				if (i == 3) {
					td.append(select)
				}
				tr.append(td);
			}//for end
			div[1].append(tr);

		}
		
		/* 상세코드 추가 버튼 */
		else if(flag == 1){
			console.log('상세코드관리 페이지  클릭버튼')
			var ccmDetailTbody = document.querySelectorAll('.ov')[0];
			var ccmDetailTr = document.createElement('tr');
			var ccmDetailSelect = document.createElement('select');
			var ccmDetailSelectYn = document.createElement('select');
			
			/* 상세코드 순번 체크 변수 */
			var ccmDetailDiv = document.querySelectorAll('.board_list'); //공통코드 테이블 div
			var ccmDetailbody = ccmDetailDiv[0].querySelectorAll('tbody');
			var ccmDetailfirstTbody = ccmDetailbody[0];
			var ccmDetailLastTr = ccmDetailfirstTbody.lastElementChild;
			var ccmDetailFirstTd = ccmDetailLastTr.firstElementChild;
			var ccmDetailnum = ccmDetailFirstTd.innerText;
			console.log('ccmDetailnum 출력')
			console.log(ccmDetailnum)

			
			/* 사업부서, 직급 select */
			for(i=0; i<2; i++){
				if(i ==0){
					var ccmDetailOption = document.createElement('option');
					ccmDetailOption.setAttribute('value','DEPT001');
					ccmDetailOption.innerText = 'DEPT001/사업부서';
					ccmDetailSelect.append(ccmDetailOption);
				}
				else if(i ==1){
					var ccmDetailOption = document.createElement('option');
					ccmDetailOption.setAttribute('value','POSI001');
					ccmDetailOption.innerText = 'POSI001/직급';
					ccmDetailSelect.append(ccmDetailOption);
				}
			}
			/* 활성화, 비활성화 select */
			for(i=0;i<2;i++){
				if(i == 0){
					var ccmDetailOption = document.createElement('option');
					ccmDetailOption.setAttribute('value','Y');
					ccmDetailOption.innerText = '활성화';
					ccmDetailSelectYn.append(ccmDetailOption);
				}
				else if(i == 1){
					var ccmDetailOption = document.createElement('option');
					ccmDetailOption.setAttribute('value','N');
					ccmDetailOption.innerText = '비활성화';
					ccmDetailSelectYn.append(ccmDetailOption);
				}				
				
				
			}
			
			for(i=0;i<5;i++){
				
				if(i == 0){
					var ccmDetailTd = document.createElement('td');
					ccmDetailTd.setAttribute('class','cmmtd');
					ccmDetailTd.innerText = parseInt(ccmDetailnum)+1;
					ccmDetailTr.append(ccmDetailTd)
				}
				else if(i == 1){
					var ccmDetailTd = document.createElement('td');
					ccmDetailTd.setAttribute('class','cmmtd');
					ccmDetailTd.append(ccmDetailSelect)
					ccmDetailTr.append(ccmDetailTd)
				}
				else if(i == 2){
					var ccmDetailTd = document.createElement('td');
					var ccmDetailInput = document.createElement('input');
					ccmDetailInput.setAttribute('type','text');
					ccmDetailTd.setAttribute('class','cmmtd');
					ccmDetailTd.append(ccmDetailInput)
					ccmDetailTr.append(ccmDetailTd)
				}
				else if(i == 3){
					var ccmDetailTd = document.createElement('td');
					var ccmDetailInput = document.createElement('input');
					ccmDetailInput.setAttribute('type','text');
					ccmDetailTd.setAttribute('class','cmmtd');
					ccmDetailTd.append(ccmDetailInput)
					ccmDetailTr.append(ccmDetailTd)
				}else if(i == 4){
					var ccmDetailTd = document.createElement('td');
					ccmDetailTd.setAttribute('class','cmmtd');
					ccmDetailTd.append(ccmDetailSelectYn)
					ccmDetailTr.append(ccmDetailTd)
				}
			}//for end
			ccmDetailTbody.append(ccmDetailTr);
			
		}
	}//addbtn end
	
	/* tr이벤트  */
	docu
</script>
</body>
</html>