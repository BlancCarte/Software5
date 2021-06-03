package user;

import java.sql.*;

public class Check {
	// DB연결을위한 커넥션, 현재상태 객체 private으로 선언
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	
	// User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
	public int check(String onum) {
		ResultSet rs = null;
		
		try {
			String sql = "select * from reservation where OrderNum=?";
			conn = dao.getConnection(); // DAO클래스에 있는 getConnection 메소드 호출해서 conn에 저장(conn이 private이기 때문에 메소드로 접근)
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, onum); // select문 ?에 USER_ID를 넣어주고 쿼리보냄
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs애 저장
			
			if (rs.next()) {
				String onum1 = rs.getString(1);// PW를 DB_PW에 저장

				if (onum.equals(onum1))// 로그인성공
				{
					System.out.println("ㅇㅋㄷㅋ");
					return 1;
				} else if (!(onum.equals(onum))) // 비밀번호 불일치
				{
					System.out.println("없는데?");
					return 0;
				}
			}
		}
		catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error1: " + ex.getMessage());
		}

		// rs랑 pstmt 닫아주기(연거랑 역순으로)
		finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return 0; // 입력받은 ID랑 DB에 있는 ID랑 다를 때 > 회원가입진행
	}
}