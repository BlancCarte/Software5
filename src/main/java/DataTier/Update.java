package DataTier;

import java.sql.*;

import DAO.DAO;
import DTO.User;

public class Update {
	// DB연결을위한 커넥션, 현재상태 객체 private으로 선언
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;

	// User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
	public User userInfo(String SG_ID) {
		ResultSet rs;
		try {
			String sql = "select * from user where ID=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, SG_ID); // select문 ?에 USER_ID를 넣어주고 쿼리보냄
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs애 저장
			
			if (rs.next()) {
				User user = new User();
				user.setUserId(rs.getString(1));
				user.setUserPw(rs.getString(2));
				user.setUserName(rs.getString(3));
				user.setUserBirth(rs.getString(4));
				user.setUserGender(rs.getString(5));
				user.setUserEmail(rs.getString(6));
				user.setUserPhone(rs.getString(7));										
				return user;	 
				
			}
		
		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
			
		}
		return null;
	}
	
	public void update(String SG_PW, String SG_NAME, String SG_BIRTH, String SG_GENDER, String SG_EMAIL,
			String SG_PHONE, String SG_PRIVACY, String SG_ADAGREE, String SG_ID) {
		try {
			String sql = "update user set PW=?, NAME=?, BIRTH=?, GENDER=?, EMAIL=?, PHONE_NUMBER=?, Privacy_Agree=?, AD_Agree=? where ID=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);			
			pstmt.setString(1, SG_PW);
			pstmt.setString(2, SG_NAME);
			pstmt.setString(3, SG_BIRTH);
			pstmt.setString(4, SG_GENDER);
			pstmt.setString(5, SG_EMAIL);
			pstmt.setString(6, SG_PHONE);
			pstmt.setString(7, SG_PRIVACY);
			pstmt.setString(8, SG_ADAGREE);
			pstmt.setString(9, SG_ID);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

	}
}
