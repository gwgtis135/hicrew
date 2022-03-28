<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
   src="<c:url value='/html/egovframework/com/cmm/utl/ckeditor/ckeditor.js'/>">
</script>
</head>
<body>
<form action="LCALSinsert.do" method="post">
    <div>대분류 명<input name="LCALS_NAME" type="text"/></div>
    <div>대분류 단계<input name="LCALS_LEVEL" type="text"/></div>
    <div>대분류 설명<textarea rows="10" cols="50" id="content" name="LCALS_INTRCN"></textarea></div>
         <ckeditor:replace replace="content"
            basePath="${pageContext.request.contextPath}/html/egovframework/com/cmm/utl/ckeditor"></ckeditor:replace>
    <div><input type="submit" value="저장"/></div>
</form>

</body>
</html>