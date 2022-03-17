<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<script>
		function fn_egov_regist_notice() {
			CKEDITOR.instances.nttCn.updateElement();
		}
	</script>
	<form action="Menuinsert.do" enctype="multipart/form-data"
		method="post">
		<div>
			대분류 id<input name="LCALS_ID" type="text" />
		</div>
		<div>
			이미지 링크<input name="MENU_LINK" type="text" />
		</div>
		<div>
			메뉴 설명
			<textarea path="editor" rows="10" cols="50" id="content"
				name="MENU_CONTENT"></textarea>
			<ckeditor:replace replace="content"
				basePath="${pageContext.request.contextPath}/html/egovframework/com/cmm/utl/ckeditor"></ckeditor:replace>
		</div>
		<div>
			이미지 파일<input type="file" name="MENU_FILE" />
		</div>
		<div>
			<input type="submit" value="저장" />
		</div>
	</form>

</body>
</html>