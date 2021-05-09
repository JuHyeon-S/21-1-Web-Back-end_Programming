<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page isErrorPage="true" %>
	<h1>예외처리 페이지</h1>
	오류 문자열[exception.toString()] : <%= exception.toString() %><br>
	오류 메시지[exception.getMessage()] : <%= exception.getMessage() %><br>
</body>
</html>
