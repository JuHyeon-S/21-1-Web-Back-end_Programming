<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for (int i = 0; i < cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		out.println("<script>alert('로그아웃되었습니다.');document.location.href='login.jsp';</script>");
	%>
</body>
</html>
