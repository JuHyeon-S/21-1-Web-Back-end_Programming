<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p><h4>----- 세션을 삭제하기 전 -----</h4>
	<%
		String name;
		String value;
		
		Enumeration en = session.getAttributeNames();
		int i = 0;
		
		while(en.hasMoreElements()){
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션 이름 [ "+ i +" ] : " + name + "<br>");
			out.println("설정된 세션 값 [ "+ i +" ] : " + value + "<br>");
		}
		session.removeAttribute("userID");
	%>
	<p><h4>----- 세션을 삭제하기 후 -----</h4>
	<%
		en = session.getAttributeNames();
		i = 0;
		
		while(en.hasMoreElements()){
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션 이름 [ "+ i +" ] : " + name + "<br>");
			out.println("설정된 세션 값 [ "+ i +" ] : " + value + "<br>");
		}
		session.removeAttribute("userID");
	%>
</body>
</html>
