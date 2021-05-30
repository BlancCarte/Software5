package user;

import java.sql.*;
import java.util.ArrayList;


public class GetOrderList {
	private static DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	static ArrayList<OrderList> list;
	
	public GetOrderList() {
		list = new ArrayList<>();
		OrderList orderlist;
		ResultSet rs = null;

		try {
			String sql = "select * from orderlist";
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String OrderNum = rs.getString(1);
				String Name = rs.getString(2);
				String PhoneNumber = rs.getString(3);
				int Headcount = rs.getInt(4);
				String Date = rs.getDate(5).toString();
				String TableNum = rs.getString(6);
				
				orderlist = new OrderList(OrderNum, Name, PhoneNumber, Headcount, Date, TableNum);
				list.add(orderlist);
			}
		} catch (Exception e) {
			
		}
	}
	public ArrayList<OrderList> getOrderList() {
		return list;
	}
	
	public static ArrayList<OrderList> getList(){
		list = new ArrayList<>();
		OrderList orderlist;
		ResultSet rs = null;

		try {
			String sql = "select * from orderlist";
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String OrderNum = rs.getString(1);
				String Name = rs.getString(2);
				String PhoneNumber = rs.getString(3);
				int Headcount = rs.getInt(4);
				String Date = rs.getDate(5).toString();
				String TableNum = rs.getString(6);
				
				orderlist = new OrderList(OrderNum, Name, PhoneNumber, Headcount, Date, TableNum);
				list.add(orderlist);
			}
		} catch (Exception e) {
			
		}
		return list;
	}
}
