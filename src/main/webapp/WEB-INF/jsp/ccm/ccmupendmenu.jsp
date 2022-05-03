
<%
	/**
* @Class Name : CcmDetailCodeList.jsp
* @Description : 공통상세코드 목록 화면
* @Modification Information
* @
* @  수정일             수정자                   수정내용
* @ -------    --------    ---------------------------
* @ 2022.04.15  박종현              최초 생성
*
*/
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cmmupendmenu/com.css">

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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
<!-- Banner style  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_style.css">


<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="../main/nav.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<jsp:include page="../main/adminTap.jsp">
		<jsp:param name="#" value="#" />
	</jsp:include>
	<div class="gtco-section-overflow">
		<input type="hidden" id="selectedmenu"> <input type="hidden" id="selecteddetail">
		<div class="gtco-section" id="gtco-services" data-section="services">
			<div class="gtco-container">
				<div class="row cmmrow">
					<div class="row ">
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
														<li><input class="s_input" name="searchKeyword" type="text" size="35" title="" maxlength="155"> <input type="submit" class="s_btn" value="조회" title="" /></li>
													</ul>
												</div>

												<!-- 목록영역 -->
												<table class="board_list cmmTable cmmcode">
													<caption>공통코드 목록</caption>
													<colgroup>
														<col style="width: 5%;">
														<col style="width: 25%;">
														<col style="width: 25%;">
														<col style="width: 25%;">
														<col style="width: 15%;">
													</colgroup>
													<tbody class="ov">

													</tbody>
												</table>
												<div class="tbl_bottom" style="float: right;">
													<div class="pagenation" id="pageControlMgmt"></div>
													<a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA" onclick="addbtn()">추가</a> <a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA">저장</a>
												</div>
											</div>
											<!-- 공통코드 테이블 목록 end -->
											<!-- 상세코드 테이블 start  -->
											<div class="board hide tblccmCodeList">
												<h1>상세코드 목록</h1>

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
														<li><input class="s_input" name="searchKeyword" type="text" size="35" title="" value="" /> <input type="submit" class="s_btn" value="조회" title="" /></li>
													</ul>
												</div>


												<!-- 목록영역 -->
												<table class="board_list cmmTable" summary="">
													<caption>사업부서 상세코드 목록</caption>
													<colgroup>
														<%-- <col style="width: 5%;">
														<col style="width: 10%;">
														<col style="width: 20%;">
														<col style="width: 25%;">
														<col style="width: 10%;">
														<col style="width: 10%;"> --%>
													</colgroup>
													<tbody class="ov detailTobdy">
														<!-- append  -->
													</tbody>
												</table>


											</div>
											<!-- 상세코드 테이블 end  -->

											<!--  hidden table 상세코드 정보를 담고 있음  -->
											<!-- 목록영역 -->
											<table class="board_list detailTable" summary="">
												<caption>사업부서 상세코드 목록</caption>
												<colgroup>
													<col style="width: 5%;">
													<col style="width: 20%;">
													<col style="width: 40%;">
													<!-- 상세페이지가 없기 때문에 db 내용을 한눈에 보이게 하기 위해서  40%  -->
													<col style="width: 10%;">
													<col style="width: 10%;">
												</colgroup>
												<tbody class="ov detailTbody">

												</tbody>
											</table>


											<input name="codeId" type="hidden" value=""> <input name="code" type="hidden" value=""> <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>">
										</form>
									</td>
								</tr>
							</table>
							<div class="tbl_bottom" style="float: right;">
								<div id="detailDiv"></div>
								
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
						<small class="block">&copy; 대구광역시 동구 첨단로 30 305호(신서동, 이노빌딩). 대표번호 : 070-8772-1612</small> <small class="block">COPYRIGHT©2018 BY HCSYSTEM. ALL RIGHTS RESERVED</small>
					</p>
				</div>
			</div>

		</div>
	</footer>
	<form method="post" action='${pageContext.request.contextPath}/detailcodeSelectChose.do'>
		<input type="hidden" name="ccCode" id="ccCode">
	</form>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

	<script type="text/javascript">
	/* 공통코드관리 상세코드관리의 추가 버튼 구분하기  */
	let ccmClickFlag = 0;
	var flag=0;
	var cmmnCode;	// 클릭한 공통코드 담을 변수
	var cmmdata;
	var  i = 1;
	
	function hideTbl(e){
		var tblccmupendmenu = document.querySelector('.tblcmmUpendMenu');
		var tblccmCode= document.querySelector('.tblccmCodeList');
		var tblText = e.target.innerText;
		
		if(tblText == '공통코드관리'){
			// 토글 : 있으면 없애고 없으면 붙인다.
			// 공통코드 관리를 눌렀을땐 공통 코드 관리 테이블에서 hide 제거
			// 동시에 상세코드 관리 테이블에 hide 추가.
			tblccmCode.classList.add('hide');
			tblccmupendmenu.classList.remove('hide');
		}
		else if(tblText == '상세코드관리'){
			$(".tblccmCodeList").empty();
			tblccmupendmenu.classList.add('hide');
			tblccmCode.classList.remove('hide');
			var ccmDiv = document.querySelector('.tblccmCodeList');
			var chImg = document.createElement('img');
			chImg.src = '${pageContext.request.contextPath}/images/Error.jpg'
			ccmDiv.appendChild(chImg);
		}
		
	}
	
	

	function addbtn() {
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
	document.querySelector('.cmmcode').addEventListener('click',function(ev){
		$('.detailTbody').empty();
		var tar = ev.target.closest("tr") ? ev.target.closest("tr") : ev.target; //ev.target 클릭한  tr 
// 		console.log(tar.querySelector('#cmmcode').firstChild.value)
		var value = tar.querySelector('#cmmCode').value; //클릭한 공통코드의 값 가져오기
		document.querySelector("#ccCode").value=tar.querySelector('#cmmCode').value;
		
		let cmmtbody = document.querySelector('.ov')
		let cmmtr = cmmtbody.querySelectorAll('tr');
		for( tr of cmmtr){
			if(tar == tr){
				tar.classList.add('chooseTr')
			}
			else{
				tr.classList.remove('chooseTr');
			}
		}
		cmmnCode = value;
		cmmdata = {ccCode:value};
		console.log('data출력');
		
		var detailTbody = document.querySelector('.detailTbody');
		
		/* 클릭시 상세코드 조회  */
		$.ajax({
			url:'${pageContext.request.contextPath}/detailcodeSelectChose.do',
			method:'get',
			data: {'ccCode':value},
			dataType:'json',
			contentType: "application/json",	
			success: function(datas){
				//var detaildata = JSON.parse(JSON.stringify(datas));
				console.log(datas.choseDetaildata);
				for(detaildata of datas.choseDetaildata){
					i = i+1;
					var detailStr = `<tr>
										<td class="cmmtd">`+i+`</td>
										<td class="cmmtd"><input value="`+detaildata.dcCode+`" type="text"></td>
										<td class="cmmtd detailCodeName"><input value="`+detaildata.dcName+`" type="text"></td>
										<td class="cmmtd"><input class="userDefineInput" value="`+detaildata.dcUserdefinecol+`" type="text"></td>
										<td class="cmmtd">
											<select>
													<option value="Y">활성화</option>
													<option value="N">비활성화</option>
											</select>
										</td>
									</tr>` 
					
					detailTbody.innerHTML += detailStr;
					console.log(detaildata);
					
					var cmmDiv = document.querySelector('#detailDiv');
					var aStr = `<a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA" onclick="addbtn()">추가</a> 
								<a id="a_remove" href="#" class="btn_type1 _rosRestrict cmmA">저장</a>`;
					cmmDiv.innerHTML = aStr;
				}
			},
			error:function(){
				console.log('상세코드 에러 발생')
			}
		});
		
		var ov = document.querySelectorAll('.ov')[1]; //상세코드 table tr
		for(i=0; i<ov.childElementCount;i++){
			if(value == ov.querySelectorAll('#detailcode')[i].firstChild.value){
				console.log(ov.querySelectorAll('#detailcode')[i].closest("tr"))
				
			}	
		}
		hideTbl('상세코드관리'); //상세코드 테이블 띄우기
	})
	/* 공통코드 조회  */
	$.ajax({
		url:'${pageContext.request.contextPath}/ccmSelectAll.do',
		contentType: "application/json",	
		dataType : 'json',
		success: function(datas){
			console.log(datas.Ccmdatas)
			
			for(ccmdata of datas.Ccmdatas){
			
				var cmmStr =`<tr id="Trclick" class="trclick">
								<td class="cmmtd">`+ccmdata.ccId+`</td>
								<td class="cmmtd"><input id="cmmCode" value="`+ccmdata.ccCode+`" type="text" readonly/></td>
								<td class="cmmtd"><input value="`+ccmdata.ccName+`" type="text"></td>
								<td class="cmmtd"><input value="`+ccmdata.ccUserdefine+`" type="text"></td>
								
								<td class="cmmtd"><select>
										<option value="Y"`; 
										if(ccmdata.ccYn == 'Y'){
											cmmStr += `selected`;
										}
								cmmStr +=	`>활성화</option>
										<option value="N"`;
										if(ccmdata.ccYn == 'N'){
											cmmStr += `selected`;
										}
								cmmStr +=`
										>비활성화</option>
								</select></td>
							</tr>
							`; 
						
						var tbody = document.querySelector('.ov');
						tbody.innerHTML += cmmStr;
			}//for end
		},
		error:function(){
			console.log('공통코드 에러 발생')
		}
	});
	
	
	var ccCode =["DEPT","POSI"];
	console.log('ccCode 출력')
	console.log(ccCode)
	//cc = JSON.parse(JSON.stringify(c))
	console.log('cc 출력')
	/* 상세코드 조회  */
	$.ajax({
		method:"POST",
		url:'${pageContext.request.contextPath}/detailcodeSelectAll.do',
		data:{"ajaxstr":ccCode},
		dataType:'json',
		success: function(datas){
			var data = JSON.parse(JSON.stringify(datas));
			console.log('success')
			console.log(data.DeailCodedatas)
		},
		error:function(request, error){
			console.log('상세코드 에러 발생')
			alert("code"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});

</script>
</body>
</html>