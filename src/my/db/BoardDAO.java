package my.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	private static BoardDAO instance = new BoardDAO();
	private BoardDAO() {
		
	}
	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	//DB����
	public static Connection getConnection(){
		Connection con = null;
		try {
			String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbUser = "scott";
			String dbPass = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		}

	public void close(Connection con, ResultSet rs, PreparedStatement pstmt) {
		if(rs!=null) 
			try {
				rs.close();
			}catch(SQLException ex) {}
		if(pstmt!=null)
			try {
				pstmt.close();
			}catch(SQLException ex) {}
		if(con!=null)
			try {
				con.close();
			}catch(SQLException ex) {}
		}
	
	
	//����θ���Ʈ (List)
		public List mainList(String id) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			List mainList = null;
			String sql="";
			try {
				conn = getConnection();
				sql = "select main_writeday, main_option, main_account, main_content, main_price from mainBoard where m_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					mainList = new ArrayList();
					do {
						BoardVO mainboard = new BoardVO();
					/*	mainboard.setMain_num(rs.getInt("main_num"));*/
						mainboard.setMain_writeday(rs.getTimestamp("main_writeday"));
						mainboard.setMain_option(rs.getString("main_option"));
						mainboard.setMain_account(rs.getString("main_account"));
						mainboard.setMain_content(rs.getString("main_content"));
						mainboard.setMain_price(rs.getInt("main_price"));
						mainList.add(mainboard);
					
					} while(rs.next());
				}
			}catch(Exception e) {
				e.printStackTrace();
		}finally {close(conn, rs, pstmt);}
		return mainList;
		}
	
		
		
		
		//main �Խù��� Count
		public int mainCount(String id) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql="";
			int count = 0;
			
			try {
				conn = getConnection();
				sql = "select nvl(count(*),0) from mainboard where m_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					count=rs.getInt(1);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
		}finally {close(conn, rs, pstmt);}
		return count;
		}	
		
	
}