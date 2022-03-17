<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="LCALSinsert.do" method="post">
    <div>대분류 명<input name="LCALS_NAME" type="text"/></div>
    <div>대분류 단계<input name="LCALS_LEVEL" type="text"/></div>
    <div>대분류 설명<textarea rows="10" cols="50" id="content" name="LCALS_INTRCN"></textarea></div>
    <div><input type="submit" value="저장"/></div>
</form>

</body>
</html>