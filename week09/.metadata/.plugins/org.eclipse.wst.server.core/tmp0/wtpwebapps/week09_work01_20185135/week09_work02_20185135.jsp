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
	���̵�: <%= id %><p>
	Ŭ���̾�Ʈ: <%= request.getRemoteAddr() %><p>
	��û ���� ����: <%= request.getContentLength() %><p>
	��û ���� ���۹��: <%= request.getMethod() %><p>	
	��û URI: <%= request.getRequestURI() %><p>
	�����̸�: <%= request.getServerName() %><p>
	������Ʈ: <%= request.getServerPort() %><p>
	<%
		if(!id.equals("������") || !pw.equals("1234")){
			out.clear();
			out.println("["+id+"]���� �����ڰ� �ƴմϴ�.");
		}
	%>
</body>
</html>