package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbID = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPass);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public int login(String id, String pass) {
		
		String SQL = "SELECT userPassword userName FROM USER1 WHERE userID = ?";
		try{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pass)) {
					return 1;	//로그인 성공
				}
				else {
					System.out.println("불일치");
					return 0;	//비밀번호 불일치
				}
			}
			return -1; //아이디가 없다
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	
	public String getname(String id) {
		String name = "";
		String SQL = "SELECT username FROM USER1 WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			
			name = rs.getString(1);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return name;
	}
}
 