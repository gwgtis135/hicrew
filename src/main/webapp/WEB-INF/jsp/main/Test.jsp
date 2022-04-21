<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<meta name="description" content="Free HTML5 Website Template by hicrew.co" />
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
<!-- Banner style  -->
<link rel="stylesheet" href="css/bootstrapcard.min.css">
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
				<div class="row photo-admin-row">
					<div class="row">
						<div class="tbl board">
							<table>
								<colgroup>
									<col style="width: 220px">
									<col style="width: 10px">
									<col style="width: auto">
								</colgroup>
								<tr>
									<jsp:include page="lefttd.jsp">
										<jsp:param name="#" value="#" />
									</jsp:include>
									<td></td>
									<td class="n_admin">
										<form name="CcmDeCodeForm" action="" method="post" onSubmit="">

											<!--조직도관리 -->
											<div class="hide table" id="tblorgcht">
												<h1>조직도 관리</h1>

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
																	<col style="width: 5%"> <!-- 여백  -->
																	<col style="width: 20%"> <!-- 이름  -->
																	<col style="width: 15%"> <!-- 직급  -->
																	<col style="width: 20%"> <!-- 부서 -->
																	<col style="width: 5%"> <!-- 돋보기 -->
																	<col style="width: 5%"> <!-- 이미지사진 아이콘  -->
																	<col style="width: 10%">  <!-- 활성화 select -->
																</colgroup>
																<tbody class="ov">
																	<tr class="cmmtd">
																		<td></td>
																		<td class="num"><input  type="text" placehoder="" value="김영석"/></td>
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
																		<td class="num"><input  type="text" placehoder="" value="이장수"/></td>
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
																		<td class="num"><input  type="text" placehoder="" value="김동업"/></td>
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
																		<td class="num"><input  type="text" placehoder="" value="이상현"/></td>
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
																		<td class="num"><input  type="text" placehoder="" value="김우현"/></td>
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
											</div> <!-- hideTable end -->
										</form>
									</td>
							</table>
						</div>

						<div class="tbl_bottom" style="float: right;">
							<div class="pagenation" id="pageControlMgmt"></div>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict">추가</a> 
							<a id="a_remove" href="#" class="btn_type3 _rosRestrict">미리보기</a>
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict emphasisButton">저장</a> 
							<a id="a_remove" href="#" class="btn_type1 _rosRestrict emphasisButton">삭제</a> 
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
					<a id="a_remove" href="#" class="btn_type1 _rosRestrict">저장</a> <a id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a> <a id="a_remove" href="#" class="btn_type1 _rosRestrict">닫기</a>
				</p>
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<!-- <button id="testBtn" class="btn">모달 테스트</button> -->
	<div class="modal fade" id="orgchtmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" type="button" data-dismiss="modal" aria-label="Close"></button>
					<button type="button" class="close" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

					<h3 class="modal-title" id="exampleModalLabel">모달테스트</h3>
				</div>
				<div class="modal-body">
					<p>
						<label>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="text" />
					</p>
					<p>
						<label>직급&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <select name="org_clsf" id="org_clsf">
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
						<span class=orgcht_modal_span> <label>&nbsp;&nbsp;</label> <input type="file" />
						</span>
					</p>

				</div>
				<div class="modal-footer">
					<a id="modalY" href="#" class="btn_type1 _rosRestrict">저장</a> <a id="a_remove" href="#" class="btn_type2 _rosRestrict">초기화</a>
					<button class="btn" type="button" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 end -->



	<input class="form-check-input photo-admin-input-type-checkbox" type="checkbox">

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
			//document.getElementById("intrcnment").value=value;
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

	</script>
</body>
</html>

