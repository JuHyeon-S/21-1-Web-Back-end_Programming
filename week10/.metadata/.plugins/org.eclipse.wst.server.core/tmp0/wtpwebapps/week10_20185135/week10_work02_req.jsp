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
	%>
	<jsp:include page="week10_work02_req2.jsp" flush="true">
		<jsp:param value="??????" name="master"/>
	</jsp:include>
</body>
</html>