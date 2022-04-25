<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<header>
		<div class="inner">
			<div class="header_cont">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/move.do/main.do"> <img style="width: 80%;"
						src="${pageContext.request.contextPath}/images/logo.png" alt="(주)하이크루">
					</a>
				</div>
				<nav class="gnb" id="Gnb">
					<ul>
						<li class="active"><a href="${pageContext.request.contextPath}/move.do/main.do" data-nav-section="home">
								<span>Home</span>
						</a></li>
						<li><a href="${pageContext.request.contextPath}/move.do/cmpnyinfo.do"> <span>회사소개</span>
						</a> <span class="depth1_arrow"></span>
							<div class="depth_wrap">
								<ul>
									<li><a href="${pageContext.request.contextPath}/move.do/cmpnyinfo.do">회사개요</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/CIintrcn.do">CI소개</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/ch.do">회사연혁</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/orgcht.do">조직도</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/directions.do">오시는길</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/photo.do">포토스토리</a></li>
								</ul>
							</div></li>
						<li><a href="${pageContext.request.contextPath}/move.do/pdfsolut.do"> <span>주요사업</span>
						</a> <span class="depth1_arrow"></span>
							<div class="depth_wrap">
								<ul class='ul_solut'>
									<li><a href="${pageContext.request.contextPath}/move.do/pdfsolut.do">PDF솔루션</a></li>
									<li><a href="${pageContext.request.contextPath}/move.do/itsolut.do">IT솔루션</a></li>
								</ul>
							</div></li>
						<li><a href="${pageContext.request.contextPath}/move.do/groupware.do" class="external"> <span>그룹웨어</span>
						</a></li>
						<li>
							<a href="${pageContext.request.contextPath}/move.do/upendmenu.do"> 
								<span>관리자 페이지</span>
							</a> 
							<span class="depth1_arrow"></span>
							<div class="depth_wrap">
								<ul class="ul_upendmenu">
									<li>
										<a href="${pageContext.request.contextPath}/move.do/upendmenu.do">메뉴 관리</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/move.do/menudetail.do">페이지 관리</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/move.do/ccmupendmenu.do">공통 코드 관리</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</nav>

			</div>
		</div>
	</header>
	<!-- 그룹웨어 새창 띄우기 -->
	<script type="text/javascript">
		function groupwareClick(url){
			console.log('그룹 웨어 이벤트 ')
			
			window.open(url);
		}
	</script>

</body>
</html>
