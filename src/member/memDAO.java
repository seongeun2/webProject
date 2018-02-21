package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class memDAO {
	private static memDAO instance = new memDAO();
	private memDAO() {
		
	}
	public static memDAO getInstance() {
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
	
	
	//ȸ����� (Insert)
	public void insert(memVO member) {
		String sql="";
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int number=0;
		try {
			pstmt = con.prepareStatement("select MemberSer.nextval from dual");
			rs = pstmt.executeQuery();
			if(rs.next()) 
				number = rs.getInt(1)+1;
			else number = 1;
			
			sql="insert into memberbd(m_num,m_id,m_name,m_birth,m_email,m_pwd,m_reg_date,m_level) "
					+ "values(?,?,?,?,?,?,sysdate,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, member.getM_id());
			pstmt.setString(3, member.getM_name());
			pstmt.setString(4, member.getM_birth());
			pstmt.setString(5, member.getM_email());
			pstmt.setString(6, member.getM_pwd());
			pstmt.setString(7, member.getM_level());
			pstmt.executeQuery();
			
		}catch(SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(con, rs, pstmt);
		}
	}
	
	//ȸ����� (List) �˻� �� ������ó��
	public List memList(int startRow, int endRow, String keyField, String keyWord) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List memList = null;
		String sql="";
		try {
			conn = getConnection();
		
			if(keyWord != null && !keyWord.equals("")) {
				sql = "select * from (select rownum rnum ,a.* "+
					  "from (select m_num, m_id, m_name, m_birth, m_reg_date, m_level " + 
					  "from memberbd where "+keyField.trim()+" like '%"+keyWord.trim()+"%' order by m_reg_date desc) a ) " +
					  "where rnum between ? and ? ";
			}else {
				sql = "select * from (select rownum rnum ,a.* "+
					  "from (select m_num, m_id, m_name, m_birth, m_reg_date, m_level " + 
					  "from memberbd order by m_reg_date desc) a ) " +
					  "where rnum between ? and ? ";
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memList = new ArrayList();
				do {
					memVO member = new memVO();
					member.setM_num(rs.getInt("m_num"));
					member.setM_id(rs.getString("m_id"));
					member.setM_name(rs.getString("m_name"));
					member.setM_birth(rs.getString("m_birth"));
					member.setM_reg_date(rs.getTimestamp("m_reg_date"));
					member.setM_level(rs.getString("m_level"));
					memList.add(member);
				
				} while(rs.next());
			}
		}catch(Exception e) {
			e.printStackTrace();
	}finally {close(conn, rs, pstmt);}
	return memList;
	}
	

	//ȸ���� Count
	public int SelectCountMem(int startRow, int endRow, String keyField, String keyWord) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		int count = 0;
		
		try {
			conn = getConnection();
			
			if(keyWord != null && !keyWord.equals("")) {
				sql = "select nvl(count(*),0) from (select rownum rnum ,a.* "+
					  "from (select m_num, m_id, m_name, m_birth, m_reg_date, m_level " + 
					  "from memberbd where "+keyField.trim()+" like '%"+keyWord.trim()+"%' order by m_reg_date desc) a ) " +
					  "where rnum between ? and ? ";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				rs = pstmt.executeQuery();
				
			}else {
				sql = "select nvl(count(*),0) from (select rownum rnum ,a.* "+
					  "from (select m_num, m_id, m_name, m_birth, m_reg_date, m_level " + 
					  "from memberbd order by m_reg_date desc) a ) ";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
			}
			if(rs.next()) {
				count=rs.getInt(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {close(conn, rs, pstmt);}
		return count;
		}


	
	//ȸ���󼼺���
	public memVO SelectViewMem(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		memVO member = null;
		
		try {
			conn = getConnection();
			
			sql = "select * from memberbd where m_num = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new memVO();
				member.setM_num(rs.getInt("m_num"));
				member.setM_id(rs.getString("m_id"));
				member.setM_name(rs.getString("m_name"));
				member.setM_birth(rs.getString("m_birth"));
				member.setM_email(rs.getString("m_email"));
				member.setM_pwd(rs.getString("m_pwd"));
				member.setM_reg_date(rs.getDate("m_reg_date"));
				member.setM_level(rs.getString("m_level"));
				
				}	
			}catch(Exception e) {
				e.printStackTrace();
		}finally {close(conn, rs, pstmt);}
		return member;
		}
	
	
	//��� ȸ���󼼺���
		public memVO ViewMem(int num) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql="";
			memVO member = null;
			
			try {
				conn = getConnection();
				
				sql = "select * from memberbd where m_num = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					member = new memVO();
					member.setM_num(rs.getInt("m_num"));
					member.setM_id(rs.getString("m_id"));
					member.setM_name(rs.getString("m_name"));
					member.setM_birth(rs.getString("m_birth"));
					member.setM_email(rs.getString("m_email"));
					member.setM_pwd(rs.getString("m_pwd"));
					member.setM_reg_date(rs.getDate("m_reg_date"));
					member.setM_level(rs.getString("m_level"));
					
					}	
				}catch(Exception e) {
					e.printStackTrace();
			}finally {close(conn, rs, pstmt);}
			return member;
			}
	
	
	
	
	
	
	//������ ����
	public memVO myhomeView(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="";
		memVO member = null;
		
		try {
			conn = getConnection();
			
			sql = "select * from memberbd where m_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new memVO();
				member.setM_num(rs.getInt("m_num"));
				member.setM_id(rs.getString("m_id"));
				member.setM_name(rs.getString("m_name"));
				member.setM_birth(rs.getString("m_birth"));
				member.setM_email(rs.getString("m_email"));
				member.setM_pwd(rs.getString("m_pwd"));
				member.setM_reg_date(rs.getDate("m_reg_date"));
				member.setM_level(rs.getString("m_level"));
				
				}	
			}catch(Exception e) {
				e.printStackTrace();
		}finally {close(conn, rs, pstmt);}
		return member;
		}
	
	
	
	//��������
	public int updateMember(memVO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int pwdcheck = 0;
		try {
			conn = getConnection();
			String sql = "update memberbd set m_id=?,m_name=?,m_birth=?,m_email=?,m_level=? where m_num=? and m_pwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getM_id());
			pstmt.setString(2, member.getM_name());
			pstmt.setString(3, member.getM_birth());
			pstmt.setString(4, member.getM_email());
			pstmt.setString(5, member.getM_level());
			pstmt.setInt(6, member.getM_num());
			pstmt.setString(7, member.getM_pwd());
			pwdcheck = pstmt.executeUpdate();
		}catch(Exception e) {
				e.printStackTrace();
		}finally {
			close(conn, null, pstmt);
		}return pwdcheck;
	}
	
	
	//ȸ������
	public int deleteMember(int num, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql="delete from memberbd where m_num=? and ad_pwd=?";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, passwd);
			x = pstmt.executeUpdate();
			}catch(SQLException ex){
				ex.printStackTrace();
			}finally {
				close(conn, rs, pstmt);
			}
		return x;
		}

	//�α���
	public int login(String id, String pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT m_pwd, m_name FROM memberbd WHERE m_id=?";
		try{
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(pass)) {
					
					return 1;	//�α��� ����
				}
				else {
					System.out.println("����ġ");
					return 0;	//��й�ȣ ����ġ
				}
			}
			System.out.println("���̵� ����");
			return -1; //���̵� ����
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //�����ͺ��̽� ����
	}
	
	
	public String getname(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String name = "";
		String sql = "select m_name from memberbd where m_id=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			name=rs.getString(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return name;
	}
		
		
}
 