<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("EUC-KR"); %>
	<% 
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	아이디: <%= id %><p>
	비밀번호: <%= pw %>
</body>
</html>