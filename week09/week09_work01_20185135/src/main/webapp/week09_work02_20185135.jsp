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
	클라이언트: <%= request.getRemoteAddr() %><p>
	요청 정보 길이: <%= request.getContentLength() %><p>
	요청 정보 전송방식: <%= request.getMethod() %><p>	
	요청 URI: <%= request.getRequestURI() %><p>
	서버이름: <%= request.getServerName() %><p>
	서버포트: <%= request.getServerPort() %><p>
	<%
		if(!id.equals("나관리") || !pw.equals("1234")){
			out.clear();
			out.println("["+id+"]님은 관리자가 아닙니다.");
		}
	%>
</body>
</html>