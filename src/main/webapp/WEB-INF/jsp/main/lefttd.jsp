<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- fontawesome  -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lefttd/theme-default.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/lefttd/core2.css">
<style>
/*
ul li div label {
	font-weight: normal;
}

ul {
	list-style-type: none;
}
*/
ul#tree li, ul.innerul li {
	border-bottom: 1px solid #efefef;
	width:100%;
}

ul.innerul li div:before {
	content: "\f105";
	font-family: FontAwesome;
	margin-left: -1.0em;
	margin-right: 0.5em;
}
.bg-menu-theme .menu-sub > .menu-item > .menu-link.tree-div-selected:not(.menu-toggle):before{
    /* background-color: orange !important; */
    border: 3px solid #e7e7ff !important;
}
.bg-menu-theme .menu-sub > .menu-item > .menu-link:before {
    content: "";
    position: absolute;
    left: 1.4375rem;
    width: 0.375rem;
    height: 0.375rem;
    border-radius: 50%;
}

ul#tree li div:hover, ul.innerul li div:hover {
	color: #ff8040;
}

ul#tree {
	padding: 0px;
	/* border: 1px solid #6f6f65; */
}

div.tree-div-selected {
	color: white !important;
	background-color: #FF5126 !important;
	font-weight: bold !important;
    border-radius: 15px;
}

.icon-fa-circle-plus:before {
	content: '\f055';
	font-family: 'FontAwesome';
}

.icon-fa-circle-plus:hover, .icon-fa-circle-minus:hover {
	color: orange;
}

.icon-fa-circle-minus:before {
	content: '\f056';
	font-family: 'FontAwesome';
}
</style>
<td style="vertical-align: top;">
	<div class="list_btn">
		<c:if
			test="${requestScope['javax.servlet.forward.servlet_path'] eq '/move.do/upendmenu.do'}">
			<i class="icon-fa-circle-plus" id="btn_addcategory"></i>
			<i class="icon-fa-circle-minus" id="btn_delcategory"></i>
		</c:if>
		
		
		<!-- <a href="#" class="btn_type1" id="btn_addcategory">추가</a> <a
													href="#" class="btn_type1" id="btn_delcategory">삭제</a> -->
	</div>
	<div id="layout-menu"
		class="layout-menu menu-vertical menu bg-menu-theme">
		<ul id="tree" class="menu-inner py-1 ps ps--active-y">
			<li class="menu-item">
				<div class="menu-link depth1 menu-toggle" data-delable="1">
					<i class="menu-icon tf-icons bx bx-layout"></i>
					<label><span data-link="main.do">Home</span></label>
				</div>
				<ul class="menu-sub"></ul>
			</li>
			<li class="menu-item">
				<div class="menu-link depth1 menu-toggle" data-delable="1">
					<i class="menu-icon tf-icons bx bx-layout"></i>
					<label><span>회사 소개</span></label>
				</div>
				<ul class="menu-sub">
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="cmpnyinfo.do">회사 개요</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="CIintrcn.do">CI 소개</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="ch.do">주요 연혁</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="orgcht.do">조직도</span></label>
						</div>
					</li>
<!-- 					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="directions.do">오시는 길</span></label>
						</div>
					</li> -->
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="photo.do">포토스토리</span></label>
						</div>
					</li>
				</ul>
			</li>
			<li class="menu-item">
				<div class="menu-link depth1 menu-toggle" data-delable="1">
					<i class="menu-icon tf-icons bx bx-layout"></i>
					<label><span>주요사업</span></label>
				</div>
				<ul class="menu-sub">
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="pdfsolut.do">pdf솔루션</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2" data-delable="2">
							<label><span data-link="itsolut.do">it솔루션</span></label>
						</div>
					</li>
				</ul>
			</li>
			<c:if
				test="${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do'}">
				<li class="menu-item">
					<div class="menu-link depth1 menu-toggle" data-delable="1">
						<i class="menu-icon tf-icons bx bx-layout"></i>
						<label><span data-link="http://gw.hicrew.kr">그룹웨어</span></label>
					</div>
				</li>
			</c:if>
		</ul>
	</div><!-- 
	<div id="layout-menu"
		class="layout-menu menu-vertical menu bg-menu-theme">
		<ul id="tree2" class="menu-inner py-1 ps ps--active-y">
			Layouts
			<li class="menu-item" style="">
				<div class="menu-link depth1 menu-toggle">
					<i class="menu-icon tf-icons bx bx-layout"></i> <label><span>회사
							소개</span></label>
				</div>

				<ul class="menu-sub">
					<li class="menu-item active">
						<div class="menu-link depth2">
							<label><span data-link="">회사 개요</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">CI 소개</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">주요 연혁</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">조직도</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">오시는 길</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">포토 스토리</span></label>
						</div>
					</li>
				</ul>
			</li>
			<li class="menu-item" style="">
				<div class="menu-link depth1 menu-toggle">
					<i class="menu-icon tf-icons bx bx-layout"></i> <label><span>주요
							사업</span></label>
				</div>

				<ul class="menu-sub">
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">pdf 솔루션</span></label>
						</div>
					</li>
					<li class="menu-item">
						<div class="menu-link depth2">
							<label><span data-link="">it 솔루션</span></label>
						</div>
					</li>
				</ul>
			</li>
		</ul>
	</div> -->
</td>
<script src="${pageContext.request.contextPath}/js/lefttd/helpers.js"></script>
<script src="${pageContext.request.contextPath}/js/lefttd/menu.js"></script>
<script src="${pageContext.request.contextPath}/js/lefttd/main.js"></script>
<script>

function loadpage(){
	var span = document.querySelector("span[data-link='"+"${Upend.upendLink }"+"']");
	span.closest("div").classList.add("tree-div-selected");
	var innerli = span.closest("li");
	var outterli = innerli.closest("ul").closest("li");
	outterli.classList.add("open");
	outterli.querySelector(".depth1").classList.add("tree-div-selected");
	span.click();
	//console.log('${requestScope['javax.servlet.forward.servlet_path']}')
	
	if("${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do'}" =="true"){
	}else if("${requestScope['javax.servlet.forward.servlet_path'] eq '/menudetail.do'}" == "true"){

	}
}

</script>
