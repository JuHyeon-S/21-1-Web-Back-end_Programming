<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<html>
	<head>
		<title>Database SQL</title>
	</head>
	<body>
		<%@ include file = "dbconn.jsp" %>
		<%
			request.setCharacterEncoding("utf-8");
		
			String id = request.getParameter("id");
			String pw = request.getParameter("passwd");
			String name = request.getParameter("name");
			
			PreparedStatement pstmt = null;
			
			try {
				String sql = "DELETE FROM Member";
				pstmt = conn.prepareStatement(sql);
				pstmt.executeUpdate();
				out.println("Member 테이블 데이터 삭제 성공했습니다.");
			}catch (SQLException ex){
				out.println("Member 테이블 데이터 삭제 실패했습니다.<br>");
				out.println("SQLException: "+ ex.getMessage());
			}finally{
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}
		%>
	</body>
</html>