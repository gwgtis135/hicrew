<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- <script>
	$(document).ready(function() {
		$.ajax({
			url : 'loadNav.do',
			data : {
				level : 0
			},
			dataType : 'json' ,
			success : function(datas) {
				console.log(datas);
				var nav = $('.head-nav');
				var flag=true;
				for(data of datas.navlist){
					console.log(data);
					var a = document.createElement("a");
					var li = document.createElement("li");
					console.log(data.lcalsName);
					a.dataset.navSection = data.lcalsName;
					a.text=data.lcalsName;
					if(flag){
						li.classList.add("active");
					}
					li.append(a);
					nav.append(li);
					flag=false;
				}
			},
			error : function(reject) {
				console.log(reject);
			}
		})
	})
</script>
<nav class="gtco-nav" role="navigation">
	<div class="gtco-container">
		<div class="row">
			<div class="col-sm-2 col-xs-12">
				<div id="gtco-logo">
					<img src="images/logo.png" alt="(주)하이크루" />
				</div>
			</div>
			<div class="col-xs-10 text-right menu-1 main-nav">
				<ul class="head-nav">
				</ul>
			</div>
		</div>

	</div> 
	-->
	<header>
    <div class="inner">
        <div class="header_cont">
            <div class="logo">
                <a href="/main">
                    <img style="width: 80%;" src="images/logo.png" alt="(주)하이크루">
                </a>
            </div>
            <nav class="gnb" id="Gnb">
                <ul>
                <li class="active">
                	<a href="#" data-nav-section="home">
                		<span>Home</span>
                	</a>
                </li>
                <li>
                    <a href="#">
                        <span>회사소개</span>
                    </a>
                    <span class="depth1_arrow"></span>
                    <div class="depth_wrap">
                        <ul>
                            <li><a href="">회사정보</a></li>
                            <li><a href="">CI소개</a></li>
                            <li><a href="ch.do">주요 연혁</a></li>
                            <li><a href="orgcht.do">조직도</a></li>
                            <li><a href="/introduce/recruitment">오시는길</a></li>
                            <li><a href="/introduce/customer">포토스토리</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                	<a href="#">
                		<span>주요사업</span>
                	</a>
                	<span class="depth1_arrow"></span>
                	<div class="depth_wrap">
                		<ul>
                			<li><a href="#">PDF솔루션</a></li>
							<li><a href="#" >IT솔루션</a></li>
                		</ul>
                	</div>
                </li>
				<li>
					<a href="http://gw.hicrew.kr" class="external">
						<span>그룹웨어</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span>페이지 관리</span>
					</a>
					<span class="depth1_arrow"></span>
					<div class="depth_wrap">
						<ul>
							<li><a href="upendmenu.do">상단 메뉴 관리</a>
							<li><a href="menudetail.do">상세 메뉴 관리</a>
						</ul>
					</div>
					
				</li>
            </nav>
            
        </div>
    </div>
</header>

</body>
</html>
