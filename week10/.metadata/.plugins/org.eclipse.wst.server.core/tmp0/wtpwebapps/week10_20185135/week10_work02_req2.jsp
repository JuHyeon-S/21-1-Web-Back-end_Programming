<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<% 
		request.setCharacterEncoding("euc-kr");

		String master = request.getParameter("master");
		Date d = new Date();
		String name = request.getParameter("name");
		String stuNum = request.getParameter("stuNum");
		String sex = request.getParameter("sex");
		String country = request.getParameter("country");
		if (sex.equalsIgnoreCase("man")){
			sex="남자";
		}else{
			sex = "여자";
		}
	%>
	1)관리자 : <%= master %><p>
	2) 현재 접속시간 : <%= d %><p>
	-------------------------<p>
	학생 정보 입력 결과<p><br>
	성명 : <%= name %><p>
	학번 : <%= stuNum %><p>
	성별 : <%= sex %><p>
	국적 : <%= country %><p>
	-------------------------<p>
	수고하셨습니다
</body>
</html>