
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
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %> --%>
<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> --%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %> --%>
<%-- <c:set var="pageTitle"><spring:message code="comSymCcmCde.cmmnDetailCodeVO.title"/></c:set> --%>
<!DOCTYPE html>
<html>
<head>
<title>${pageTitle}<spring:message code="title.list" /></title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>


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



</head>
<body>

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
									<td class="n_admin"><form commandName="cmmnDetailCodeVO" method="post" onSubmit="">
											<div class="wTableFrm">
												<!-- 타이틀 -->
												<h2>
													사업부서관리 상세코드 등록
												</h2>

												<!-- 등록폼 -->
												<table class="wTable" summary="">
													<caption>${pageTitle }

													</caption>
													<colgroup>
														<col style="width: 20%;">
														<col style="width:;">
													</colgroup>
													<tbody>
														<!-- 입력/선택 -->

														<!-- 코드ID -->

														<tr>
															<th><label for="codeId">코드ID <span class="pilsu">*</span></label></th>
															<td class="left">
																<select>
																	<option value="" label="" />선택하세요
																	<option value="" label="" />사업부서
																</select> 
																<div>
																</div></td>
														</tr>

														<!-- 상세코드 -->
													
														<tr>
															<th><label for="code">상세코드 <span class="pilsu">*</span></label></th>
															<td class="left"><input type="text" path="code" title="" size="70" maxlength="70" />
																<div>
																	<errors path="code" cssClass="error" />
																</div></td>
														</tr>

														<!-- 상세코드명 -->
														
														<tr>
															<th><label for="codeNm">상세코드명 <span class="pilsu">*</span></label></th>
															<td class="left"><input type="text" path="codeNm" title="${title} ${inputTxt}" size="70" maxlength="70" />
																<div>
																	<errors path="codeNm" cssClass="error" />
																</div></td>
														</tr>
														
														<!-- 시작일시 -->
														
														<tr>
															<th><label for="codeNm">시작 일시 <span class="pilsu">*</span></label></th>
															<td class="left"><input type="date" path="codeNm" title="" size="70" maxlength="70" />
															</td>
														</tr>

														<!-- 상세코드설명 -->
														
														<tr>
															<th><label for="codeDc">상세코드설명 <span class="pilsu">*</span></label></th>
															<td class="nopd">
																<textarea  cols="300" rows="20" ></textarea>
															</td>
														</tr>
														
														

														<!-- 사용여부 -->
														
														<tr>
															<th>사용여부<span class="pilsu">*</span></th>
															<td class="left"><select  title="" cssClass="txt">
																	<option value="Y" label="" />예
																	<option value="N" label=""/>아니오
																</select>
																<div>
																	<errors path="useAt" cssClass="error" />
																</div></td>
														</tr>

													</tbody>
												</table>

												<!-- 하단 버튼 -->
												<div class="btn">
													<input type="submit" class="s_submit" value="등록" title="등록 버튼" /> 
													<span class="btn_s">
														<a href="ccmupendmenu.do"  />목록
														</a>
													</span>
												</div>
												<div style="clear: both;"></div>

											</div>

											<%-- <input name="cmd" type="hidden" value="<c:out value='save'/>"> --%>
										</form></td>
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