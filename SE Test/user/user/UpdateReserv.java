package user;

import java.sql.*;

public class UpdateReserv {
	// DB연결을위한 커넥션, 현재상태 객체 private으로 선언
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	
	// User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
	public ResrInfo resrinfo(String onum) {
		ResultSet rs;
		try {
			String sql = "select * from reservation where OrderNum=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, onum); // select문 ?에 onum를 넣어주고 쿼리보냄
			rs = pstmt.executeQuery(); // 쿼리받은 값을 rs에 저장
			
			if (rs.next()) {
				System.out.println("값 읽었다.");
				ResrInfo onum1 = new ResrInfo();
				onum1.setOnum(onum);
				System.out.println(onum);
				onum1.setName(rs.getString(2));
				onum1.setPnum(rs.getString(3));
				onum1.setDate(rs.getString(4));
				onum1.setTime(rs.getString(5));
				onum1.setHead(rs.getString(7));	

				return onum1;	 
				
			}
		
		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error2: " + ex.getMessage());
			
		}
		System.out.println("?");
		return null;
	}
	
	public void delete(String onum1) {
		try {
			String sql = "delete from `order` where OrderNum=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, onum1);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

	}
	
	public void update(String onum, String date, String time, String seat, String head, int price) {
		try {
			String sql = "update reservation set OrderNum=?, ReserveDate=?, ReserveTime=?, SeatValue=?, HeadCount=?, TotalPrice=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, onum);
			pstmt.setString(2, date);
			pstmt.setString(3, time);
			pstmt.setString(4, seat);
			pstmt.setString(5, head);
			pstmt.setInt(6, price);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용

		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}

	}
	public int deletereserv(String onum2) {
		try {
			String sql = "delete from `reservation` where OrderNum=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, onum2);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용
			return 1;
		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}
		return 0;
	}
	public int deleteorder(String onum2) {
		try {
			String sql = "delete from `order` where OrderNum=?";

			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, onum2);
			pstmt.executeUpdate(); // insert문이라 executeUpdate사용
			return 1;
		} catch (SQLException ex) {
			System.out.println("LOADING 실패");
			System.out.println("Error: " + ex.getMessage());
		}
		return 0;
	}
}
