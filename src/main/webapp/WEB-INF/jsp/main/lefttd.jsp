<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- fontawesome  -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<style>
ul li div label {
	font-weight: normal;
}

ul {
	list-style-type: none;
}

ul#tree li, ul.innerul li {
	border-bottom: 1px solid #efefef;
}

ul.innerul li div:before {
	content: "\f105";
	font-family: FontAwesome;
	margin-left: -1.0em;
	margin-right: 0.5em;
}

ul#tree li div:hover, ul.innerul li div:hover {
	color: #007FFF;
}

ul#tree {
	padding: 0px;
	border: 1px solid #6f6f65;
}

div.tree-div-selected label span {
	color: orange;
	font-weight: bold !important;
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
			test="${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do'}">
			<i class="icon-fa-circle-plus" id="btn_addcategory"></i>
			<i class="icon-fa-circle-minus" id="btn_delcategory"></i>
		</c:if>
		<!-- <a href="#" class="btn_type1" id="btn_addcategory">추가</a> <a
													href="#" class="btn_type1" id="btn_delcategory">삭제</a> -->
	</div>
	<ul id="tree">
		<li>
			<div class="drag-label list tree-has-child depth1" data-delable="1">
				<label><span data-link="main.do">Home</span></label>
			</div>
		</li>
		<li>
			<div class="drag-label list tree-has-child depth1" data-delable="1">
				<label><span>회사 소개</span></label>
			</div>
			<ul class="innerul hide">
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="cmpnyinfo.do">회사 개요</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="CIintrcn.do">CI 소개</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="ch.do">주요 연혁</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="orgcht.do">조직도</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="directions.do">오시는 길</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="photo.do">포토스토리</span></label>
					</div>
				</li>
			</ul>
		</li>
		<li>
			<div class="drag-label list tree-has-child depth1" data-delable="1">
				<label><span>주요사업</span></label>
			</div>
			<ul class="innerul hide">
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="pdfsolut.do">pdf솔루션</span></label>
					</div>
				</li>
				<li class="tree-node">
					<div class="list drag-label depth2" data-delable="2">
						<label><span data-link="itsolut.do">it솔루션</span></label>
					</div>
				</li>
			</ul>
		</li>
		<li>
			<div class="drag-label list tree-has-child depth1" data-delable="1">
				<label><span data-link="http://gw.hicrew.kr">그룹웨어</span></label>
			</div>
		</li>
	</ul>
</td>
