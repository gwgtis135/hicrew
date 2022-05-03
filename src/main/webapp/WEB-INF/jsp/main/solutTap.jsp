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
	<section class="sub newsroom">
		<div class="sub_top">
			<div class="inner">
				<div class="sub_top_title">
					<h2>주요사업</h2>
				</div>
			</div>
		</div>
		<div class="sub_menu">
			<div class="inner">
	<!-- 현재페이지 url 읽어서 상황에 맞는 페이지 명 띄워주는거임. -->
				<ul class="sub_menu_lst">

					<li class=""><a href="${pageContext.request.contextPath}/move.do/pdfsolut.do">PDF 솔루션</a></li>
					<li><a href="${pageContext.request.contextPath}/move.do/itsolut.do">IT솔루션</a></li>
				</ul>
			</div>
		</div>

	</section>
</body>
</html>