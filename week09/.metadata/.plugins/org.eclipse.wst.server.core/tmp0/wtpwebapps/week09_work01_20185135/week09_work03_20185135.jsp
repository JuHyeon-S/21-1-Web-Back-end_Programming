<%@page import="java.sql.Time"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	�� �������� 5�ʸ��� ���ΰ�ħ �˴ϴ�.<p>
	<%@page import="java.util.Date"%>
	<%= new Date().toString() %>
	<% response.setIntHeader("refresh", 5); %>
</body>
</html>