<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
ul, li {
	list-style: none;
}
</style>
</head>
<body>
	<section class="sub company">
		<div class="sub_top">
			<div class="inner">
				<div class="sub_top_title">
					<h2>회사소개</h2>
				</div>
			</div>
		</div>
		<div class="sub_menu">
			<div class="inner">

				<ul class="sub_menu_lst">

					<li class=""><a href="${pageContext.request.contextPath}/move.do/cmpnyinfo.do">회사개요</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/CIintrcn.do">CI소개</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/ch.do">회사 연혁</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/orgtest.do">조직도</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/directions.do">오시는길</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/photo.do">포토스토리</a></li>
				</ul>
			</div>
		</div>

	</section>
</body>
</html>