<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("euc-kr"); %>
	<h2> 메소드 post 방식에서 한글 처리 </h2>
	한글 성명 : <%= request.getParameter("korname") %><p>
	영문 성명 : <%= request.getParameter("engname") %><p>
</body>
</html>
