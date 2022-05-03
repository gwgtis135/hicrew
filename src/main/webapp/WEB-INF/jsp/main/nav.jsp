<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<a href="${pageContext.request.contextPath}/move.do/main.do"> <img style="width: 80%;" src="${pageContext.request.contextPath}/images/logo.png" alt="(주)하이크루">
					</a>
				</div>
				<nav class="gnb" id="Gnb">
					<ul>
					</ul>
				</nav>

			</div>
		</div>
	</header>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script>
	console.log("this is nav");
	$.ajax({
		url:'${pageContext.request.contextPath}/loadupend.do',
		contentType: "application/json",
		dataType : 'json',
		async: false,
		success: function(datas){
			var data = JSON.parse(JSON.stringify(datas));
			var outterul = document.querySelector("nav#Gnb > ul");
			for(upend of data.upendlist){
				if(upend.upendName == "Home" || upend.upendName == "그룹웨어"){
					var outterli = `
						<li>
							<a href="${pageContext.request.contextPath}/move.do/`+upend.upendLink+`"> 
								<span>`+upend.upendName+`</span>
							</a> 
						</li>`;
					outterul.innerHTML +=outterli;
				}else if(upend.upendUpendMenu==0){
					var outterli = `
						<li>
							<a href="${pageContext.request.contextPath}/move.do/`+upend.upendLink+`"> 
								<span>`+upend.upendName+`</span>
							</a> 
					<div class="depth_wrap upendmenu`+upend.upendId+`">
						<ul class="ul_`+upend.upendId+`">
						
						</ul>
					</li>`;
					outterul.innerHTML +=(outterli);
				}else{
					var innerul = document.querySelector("div.depth_wrap.upendmenu"+upend.upendUpendMenu+" > ul");
					var innerli =`
						<li><a href="${pageContext.request.contextPath}/move.do/`+upend.upendLink+`">`+upend.upendName+`</a></li>`;
					innerul.innerHTML +=innerli;
				}
			}
		},
		error: function(){
			console.log('에러 발생');
		}
	})
</script>
</body>
</html>
