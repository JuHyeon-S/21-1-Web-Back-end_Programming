<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String makeItLower(String str){
			return str.toLowerCase();
		}
	%>
	<% 
		out.println(makeItLower("Hello World") + "<br>"); 
		out.println("Hello World".toUpperCase());
	%>
	
</body>
</html>