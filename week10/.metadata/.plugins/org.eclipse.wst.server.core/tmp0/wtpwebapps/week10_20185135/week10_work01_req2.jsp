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
		request.setCharacterEncoding("euc-kr");
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
	
	<h2>학생 정보 입력 결과</h2>
	성명 : <%= name %><p>
	학번 : <%= stuNum %><p>
	성별 : <%= sex %><p>
	국적 : <%= country %><p>
</body>
</html>