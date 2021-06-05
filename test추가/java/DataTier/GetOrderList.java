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

	public static ArrayList<OrderList> getList() {
		list = new ArrayList<>();
		OrderList orderlist;
		ResultSet rs = null;
		try {
			String sql = "select OrderNum, Name, PhoneNum, ReserveDate, ReserveTime, SeatValue, HeadCount from reservation";
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			// pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String OrderNum = rs.getString(1);
				String Name = rs.getString(2);
				String PhoneNumber = rs.getString(3);
				Date Date = rs.getDate(4);
				String Time = rs.getTime(5).toString();
				String TableNum = rs.getString(6);
				int Headcount = rs.getInt(7);
				orderlist = new OrderList(OrderNum, Name, PhoneNumber, Headcount, Date, Time, TableNum);
				list.add(orderlist);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public OrderList getTestList(String orderNum) {
		OrderList testList = null;
		ResultSet rs = null;
		try {
			String sql = "select OrderNum, Name, PhoneNum, ReserveDate, ReserveTime, SeatValue, HeadCount from reservation where OrderNum = ?";
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,orderNum);
			// pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String OrderNum = rs.getString(1);
				String Name = rs.getString(2);
				String PhoneNumber = rs.getString(3);
				Date Date = rs.getDate(4);
				String Time = rs.getTime(5).toString();
				String TableNum = rs.getString(6);
				int Headcount = rs.getInt(7);
				testList = new OrderList(OrderNum, Name, PhoneNumber, Headcount, Date, Time, TableNum);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return testList;
	}
}
