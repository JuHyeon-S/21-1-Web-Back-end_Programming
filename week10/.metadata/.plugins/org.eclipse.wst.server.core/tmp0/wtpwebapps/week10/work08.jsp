<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p><h4>----- ������ �����ϱ� �� -----</h4>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		
		out.println("������ ���� �̸� userID : " + user_id + "<br>");
		out.println("������ ���� �� userPW : " + user_pw + "<br>");
		
		session.removeAttribute("userID");
	%>
	<p><h4>----- ������ �����ϱ� �� -----</h4>
	<%
		user_id = (String) session.getAttribute("userID");
		user_pw = (String) session.getAttribute("userPW");
		
		out.println("������ ���� �̸� userID : " + user_id + "<br>");
		out.println("������ ���� �� userPW : " + user_pw + "<br>");
	%>
</body>
</html>