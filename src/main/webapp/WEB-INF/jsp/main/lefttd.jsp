<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- fontawesome  -->
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/lefttd/theme-default.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/lefttd/core2.css">
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
	width: 100%;
}

ul.innerul li div:before {
	content: "\f105";
	font-family: FontAwesome;
	margin-left: -1.0em;
	margin-right: 0.5em;
}

.bg-menu-theme .menu-sub>.menu-item>.menu-link.tree-div-selected:not(.menu-toggle):before
	{
	/* background-color: orange !important; */
	border: 3px solid #e7e7ff !important;
}

.bg-menu-theme .menu-sub>.menu-item>.menu-link:before {
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
			test="${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do' || requestScope['javax.servlet.forward.servlet_path'] eq '/move.do/upendmenu.do'}">
			<i class="icon-fa-circle-plus" id="btn_addcategory"></i>
			<i class="icon-fa-circle-minus" id="btn_delcategory"></i>
		</c:if>
		<!-- <a href="#" class="btn_type1" id="btn_addcategory">추가</a> <a
													href="#" class="btn_type1" id="btn_delcategory">삭제</a> -->
	</div>
	<div id="layout-menu"
		class="layout-menu menu-vertical menu bg-menu-theme">
		<ul id="tree" class="menu-inner py-1 ps ps--active-y">
		</ul>
	</div>
</td>
<script src="${pageContext.request.contextPath}/js/lefttd/helpers.js"></script>
<script src="${pageContext.request.contextPath}/js/lefttd/menu.js"></script>
<script src="${pageContext.request.contextPath}/js/lefttd/main.js"></script>
<script>
function loadlefttd(){
	$.ajax({
		url:'${pageContext.request.contextPath}/loadupend.do',
		contentType: "application/json",
		dataType : 'json',
		async: false,
		success: function(datas){
			var data = JSON.parse(JSON.stringify(datas));
			var outterul = document.querySelector("ul#tree");
			for(upend of data.upendlist){
				if(upend.upendName == "Home" || upend.upendName == "그룹웨어"){
					var outterli = `<li class="menu-item">
						<div class="menu-link depth1 menu-toggle" data-delable="1">
							<i class="menu-icon tf-icons bx bx-layout"></i>
							<label><span data-link="main.do">`+upend.upendName+`</span></label>
						</div>
					</li>`;
					outterul.innerHTML +=(outterli);
				}else if(upend.upendName == "관리자 페이지" || upend.upendName == "오시는길" || upend.upendUpendMenu==5){
					console.log("필터됨");
				}else if(upend.upendUpendMenu==0){
					var outterli = `<li class="menu-item">
						<div class="menu-link depth1 menu-toggle" data-delable="1">
							<i class="menu-icon tf-icons bx bx-layout"></i>
							<label><span data-link="main.do">`+upend.upendName+`</span></label>
						</div>
						<ul class="menu-sub" id="upend`+upend.upendId+`"></ul>
					</li>`;
					outterul.innerHTML +=(outterli);
				}else{
					session = window.sessionStorage;
					session.setItem(upend.upendName,upend.upendIntrcn);
					console.log("ul#upend"+upend.upendUpendMenu);
					console.log("ul#upend"+upend.upendName);
					var innerul = document.querySelector("ul#upend"+upend.upendUpendMenu);
					var innerli =`<li class="menu-item">
									<div class="menu-link depth2" data-delable="2">
										<label><span data-link="`+upend.upendLink+`">`+upend.upendName+`</span></label>
									</div>
								</li>`;
					innerul.innerHTML +=innerli;
				}
			}
		},
		error: function(){
			console.log('에러 발생');
		}
	})
}
function loadpage(){
	var span = document.querySelector("span[data-link='"+"${Upend.upendLink }"+"']");
	span.closest("div").classList.add("tree-div-selected");
	var innerli = span.closest("li");
	var outterli = innerli.closest("ul").closest("li");
	outterli.classList.add("open");
	outterli.querySelector(".depth1").classList.add("tree-div-selected");
	span.click();
	if("${requestScope['javax.servlet.forward.servlet_path'] eq '/upendmenu.do'}" =="true"){
	}else if("${requestScope['javax.servlet.forward.servlet_path'] eq 'move.do/menudetail.do'}" == "true"){
		if(span.getAttribute("data-link").split(".")[0]=="ch"){
			console.log("asdasdsad");
			$.ajax({
				url:'./ChSelectAll.do',
				contentType: "application/json",	
				dataType : 'json',
				async: false,
				success: function(datas){
					var data = JSON.parse(JSON.stringify(datas));
					for(chdata of data.chdatas){
						var chStr = `<tr class="cmmtd">
									<td class="num">
										<c:if test = '${chdata.ChYn == "Y" }'>
											<input class="form-check-input" type="checkbox" value="" id="defaultCheck3" checked />
										</c:if>
										<c:if test = '${chdata.ChYn == "N" }'>
											<input class="form-check-input" type="checkbox" value="" id="defaultCheck3"/>
										</c:if>
									</td>
									<td>
										<input class="" type="date" value="`+chdata.chFromDate+`">
									</td>
									<td>
										<select name="">
												<option value="">세종(나이스 구축 사업)</option>
												<option>대구(나이스 유지보수 사업)</option>
												<option>대구(정보공시 2020)</option>
												<option>대구(본부)</option>
										</select>
									</td>
									<td></td>
								</tr>`;
						var tbody = document.querySelector('#chhhhTable');
						tbody.innerHTML = chStr;
					}
				},
				error: function(){
					console.log('에러 발생')
				}
			});
		}
	}
}

</script>
