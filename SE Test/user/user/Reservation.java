package user;

import java.sql.*;

public class Reservation {
   // DB연결을위한 커넥션, 현재상태 객체 private으로 선언
   private DAO dao = DAO.getInstance();
   private static Connection conn;
   private static PreparedStatement pstmt;

   // User클래스에서 입력받은 값을 불러와서 DB에 저장하는 메소드
   public void reserv(String onum, String name, String pnum, String date, String time, String seat, String head, int price) {
      try {
         String sql = "insert into reservation values(?,?,?,?,?,?,?,?)";

         conn = dao.getConnection();
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1,onum);
     	 pstmt.setString(2,name);
         pstmt.setString(3,pnum);
         pstmt.setString(4,date);
         pstmt.setString(5,time);
     	 pstmt.setString(6,seat);
    	 pstmt.setString(7,head);
    	 pstmt.setInt(8,price);
         pstmt.executeUpdate(); // insert문이라 executeUpdate사용

      } catch (SQLException ex) {
         System.out.println("LOADING 실패");
         System.out.println("Error: " + ex.getMessage());
      }
   }
   public void order(String onum, int dishid, int dishcount) {
	      
	      try {
	         String sql = "insert into `order` values(?,?,?)";

	         conn = dao.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1,onum);
	     	 pstmt.setInt(2,dishid);
	         pstmt.setInt(3,dishcount);
	         pstmt.executeUpdate(); // insert문이라 executeUpdate사용

	      } catch (SQLException ex) {
	         System.out.println("LOADING 실패");
	         System.out.println("Error: " + ex.getMessage());
	      }
	   }
}