<%@ page import="java.sql.*" %>
<%
	Connection conn = null;

	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String passwd = "900326";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,passwd);
%>
