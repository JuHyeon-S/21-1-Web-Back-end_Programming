<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JavaBeans�� �̿��� �л��� �̸��� ������ ����� ��ȸ ����</h2>
	<jsp:useBean id="score" class="javabean.ScoreBean" scope="page"></jsp:useBean>
	
	<hr>
	<h3>�̸��� ������ JavaBeans ScoreBean�� ����</h3><p>
	�̸� : <%= "ȫ�浿" %>,
	���� : <%= "78" %><p>
	<jsp:setProperty property="name" name="score" value="ȫ�浿"/>
	<jsp:setProperty property="point" name="score" value="78"/>
	
	<hr>
	<h3>JavaBeans ScoreBean�� ����� ������ ���</h3>
	�̸� : <jsp:getProperty property="name" name="score"/><br>
	���� : <jsp:getProperty property="point" name="score"/><br>
</body>
</html>