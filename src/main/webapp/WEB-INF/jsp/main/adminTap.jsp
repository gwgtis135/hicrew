<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<section class="sub ir">
		<div class="sub_top">
			<div class="inner">
				<div class="sub_top_title">
				<c:if test="${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do' || requestScope['javax.servlet.forward.servlet_path'] eq '/move.do/upendmenu.do'}">
					<h2>메뉴 관리</h2>
				</c:if>
				<c:if test="${requestScope['javax.servlet.forward.servlet_path'] eq '/menudetail.do' || requestScope['javax.servlet.forward.servlet_path'] eq '/move.do/menudetail.do'}">
					<h2>페이지 관리</h2>
				</c:if>
				</div>
			</div>
		</div>
	</section>
</body>
</html>