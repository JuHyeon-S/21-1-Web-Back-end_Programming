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
		
		if(request.isRequestedSessionIdValid() == true){
			out.println("������ ��ȿ�մϴ�.");
		} else{
			out.println("������ ��ȿ���� �ʽ��ϴ�.");
		}
		session.invalidate();
	%>
	<p><h4>----- ������ �����ϱ� �� -----</h4>
	<%
		if(request.isRequestedSessionIdValid() == true){
			out.println("������ ��ȿ�մϴ�.");
		} else{
			out.println("������ ��ȿ���� �ʽ��ϴ�.");
		}
	%>
</body>
</html>