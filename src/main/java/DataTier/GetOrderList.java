package DataTier;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

import DAO.DAO;
import DTO.OrderList;


public class GetOrderList {
	private static DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	static ArrayList<OrderList> list;
	
	public GetOrderList() {

	}
	public static ArrayList<OrderList> getList(){
		list = new ArrayList<>();
		OrderList orderlist;
		ResultSet rs = null;
		try {
			String sql = "select OrderNum, Name, PhoneNum, ReserveDate, SeatValue, HeadCount from reservation";
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String OrderNum = rs.getString(1);
				String Name = rs.getString(2);
				String PhoneNumber = rs.getString(3);
				Date Date = rs.getDate(4);
				String TableNum = rs.getString(5);
				int Headcount = rs.getInt(6);
				
				orderlist = new OrderList(OrderNum, Name, PhoneNumber, Headcount, Date, TableNum);
				list.add(orderlist);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
}
