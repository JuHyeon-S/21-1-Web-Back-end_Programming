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
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		if (user_id.equals("kim") && user_pw.equals("1234")){
			Cookie cookie_id = new Cookie("user_id", user_id);
			Cookie cookie_pw = new Cookie("user_pw", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			out.println("["+user_id +"] �� �ݰ����ϴ�.<br>");
			out.println("<a href='my.jsp'>" + user_id + "���� ���� �������� �̵��մϴ�.</a><br>");
			out.println("<a href='logout.jsp'>�α׾ƿ� �մϴ�.</a>");		
		} else{
			out.println("<script>alert('���̵�� �н����尡 �ٸ��ϴ�.');window.history.back();</script>");				
		}
	%>
</body>
</html>
