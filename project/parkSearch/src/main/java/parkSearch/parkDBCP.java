package parkSearch;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;

public class parkDBCP {
	private static final String JDBC_DRIVER = "org.git.mm.mysql.Driver";
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/parkdb";
	private static final String USER = "root";
	private static final String PASSWD = "900326";
	
	private Connection con = null;
	private PreparedStatement pstmt = null;

	//jdbc 드라이버 로드
	public parkDBCP() {
		try {
			Class.forName(JDBC_DRIVER);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//db 연결
	void connect() {
		try {
			con = DriverManager.getConnection(JDBC_URL, USER, PASSWD);
			System.out.println("db conn");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	//db 연결 해제
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();

			}
		}
	}
	public ArrayList<parkEntity> getParkList(){
		connect();
		ArrayList<parkEntity> list = new ArrayList<parkEntity>();
		
		String SQL = "select * from db";
		try {
			pstmt = con.prepareStatement(SQL);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				parkEntity pe = new parkEntity();
				pe.setId(rs.getString("id"));
				pe.setName(rs.getString("name"));
				pe.setCategory(rs.getString("category"));
				pe.setAddr_new(rs.getString("addr_new"));
				pe.setAddr_old(rs.getString("addr_old"));
				pe.setX(Double.parseDouble(rs.getString("Y")));
				pe.setX(Double.parseDouble(rs.getString("X")));
				pe.setArea(rs.getInt("area"));
				pe.setFacility1(rs.getString("facility1"));
				pe.setFacility2(rs.getString("facility2"));
				pe.setFacility3(rs.getString("facility3"));
				pe.setFacility4(rs.getString("facility4"));
				pe.setTell(rs.getString("tell"));
				pe.setUpdate(rs.getString("update"));
				
				list.add(pe);
			}
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
	public ArrayList<parkEntity> getParkList_s(String key){
		connect();
		ArrayList<parkEntity> list = new ArrayList<parkEntity>();
		parkEntity pe = new parkEntity();
		String SQL = "select * from db where addr_new = '%"+key+"%' or addr_old = '%"+key+"%'"; //or facility1 = '%"+key+"%' or facility2 = '%"+key+"%' or facility3 = '%"+key+"%' or facility4 = '%"+key+"%'";
		try {
			pstmt = con.prepareStatement(SQL);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				
				pe.setId(rs.getString("id"));
				pe.setName(rs.getString("name"));
				pe.setCategory(rs.getString("category"));
				pe.setAddr_new(rs.getString("addr_new"));
				pe.setAddr_old(rs.getString("addr_old"));
				pe.setX(Double.parseDouble(rs.getString("Y")));
				pe.setX(Double.parseDouble(rs.getString("X")));
				pe.setArea(rs.getInt("area"));
				pe.setFacility1(rs.getString("facility1"));
				pe.setFacility2(rs.getString("facility2"));
				pe.setFacility3(rs.getString("facility3"));
				pe.setFacility4(rs.getString("facility4"));
				pe.setTell(rs.getString("tell"));
				pe.setUpdate(rs.getString("update"));
				
				list.add(pe);
			}
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
	
}
