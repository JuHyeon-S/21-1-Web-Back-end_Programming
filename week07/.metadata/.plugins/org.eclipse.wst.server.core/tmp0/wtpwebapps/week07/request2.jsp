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
	<%
		String studentNum = request.getParameter("studentNum");
		String[] majors = request.getParameterValues("major");
	%>
	<h2>학생 정보 입력 결과</h2>
	학번 : <%= studentNum %><p>
	전공 : <%
			if(majors == null)	{
				out.println("전공없음");
			}else{
				for (int i = 0; i <majors.length; i++){
					out.println(majors[i]+" ");
				}
			}
	%>
	
	<h2>요청정보</h2>
	요청방식 : <%= request.getMethod() %><p>
	요청URL : <%= request.getRequestURL() %><p>
	요청URI : <%= request.getRequestURI() %><p>
	클라이언트 주소 : <%= request.getRemoteAddr() %><p>
	클라이언트 호스트 : <%= request.getRemoteHost() %><p>
	프로토콜 방식 : <%= request.getProtocol() %>
	서버 이름 : <%= request.getServerName() %>
	서버 포트 번호 : <%= request.getServerPort() %>
</body>
</html>
