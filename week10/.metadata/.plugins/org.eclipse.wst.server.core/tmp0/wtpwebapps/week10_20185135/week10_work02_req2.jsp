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
			sex="����";
		}else{
			sex = "����";
		}
	%>
	1)������ : <%= master %><p>
	2) ���� ���ӽð� : <%= d %><p>
	-------------------------<p>
	�л� ���� �Է� ���<p><br>
	���� : <%= name %><p>
	�й� : <%= stuNum %><p>
	���� : <%= sex %><p>
	���� : <%= country %><p>
	-------------------------<p>
	�����ϼ̽��ϴ�
</body>
</html>