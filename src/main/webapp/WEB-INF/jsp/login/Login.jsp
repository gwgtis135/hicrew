<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="comUatUia.title" /></title><!-- 로그인 -->
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/com.css' />">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/uat/uia/login.css' />">
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/showModalDialog.js'/>" ></script>
<script type="text/javascript" src="<c:url value='/js/egovframework/com/cmm/jquery.js'/>" ></script>
<script type="text/javaScript" language="javascript">
function checkLogin(userSe) {
	//일반회원
	if (userSe == "GNR") {
        document.loginForm.rdoSlctUsr[0].checked = true;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "GNR";
	}
}

function actionLogin(){
	if (document.loginForm.id.value == ""){
		alert("<spring:message code="comUatUia.validate,idCheck" />"); <%--아이디를 입력하세요 --%>
	} else if(document.loginForm.password.value ==""){
		alert("<spring:message code="comUatUia.validate.passCheck" />"); <%-- 비밀번호를 입력하세요 --%>
	} else {
		document.loginForm.action="<c:url value '/login/actionLogin.do'/>";
		document.loginForm.submit();
	}
}
function actionCrtFctLogin(){
	docum,ent
}

</script>
</head>
<body>

</body>
</html>