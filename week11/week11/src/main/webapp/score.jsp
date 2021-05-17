<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JavaBeans를 이용한 학생의 이름과 성적의 저장과 조회 예제</h2>
	<jsp:useBean id="score" class="javabean.ScoreBean" scope="page"></jsp:useBean>
	
	<hr>
	<h3>이름과 성적을 JavaBeans ScoreBean에 저장</h3><p>
	이름 : <%= "홍길동" %>,
	성적 : <%= "78" %><p>
	<jsp:setProperty property="name" name="score" value="홍길동"/>
	<jsp:setProperty property="point" name="score" value="78"/>
	
	<hr>
	<h3>JavaBeans ScoreBean에 저장된 정보를 출력</h3>
	이름 : <jsp:getProperty property="name" name="score"/><br>
	성적 : <jsp:getProperty property="point" name="score"/><br>
</body>
</html>