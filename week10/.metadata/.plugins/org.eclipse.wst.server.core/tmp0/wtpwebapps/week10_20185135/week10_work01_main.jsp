<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>�л� ���� �Է�</h3>
	<form name="form" method="post" action="week10_work01_req.jsp">
		���� : <input type="text" name="name"><p>
		�й� : <input type="text" name="stuNum"><p>
		���� : ���� <input type="radio" name="sex" value="man">
			  ���� <input type="radio" name="sex" value="woman"><p>
		���� : <select name="country">
					<option SELCETED value="���ѹα�">���ѹα�</option>
					<option value="�߱�">�߱�</option>
					<option value="�Ϻ�">�Ϻ�</option>
		</select><p>
		<input type="submit" value="������">
	</form>
</body>
</html>