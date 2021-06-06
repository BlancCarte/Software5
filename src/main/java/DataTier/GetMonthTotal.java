package DataTier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.YearMonth;
import java.util.ArrayList;

import DAO.DAO;

public class GetMonthTotal {// 월간 매출
	private static DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	static ArrayList<int[]> barChartData;
	static ArrayList<int[]> areaChartData;

	static int[] first = new int[6];
	static int[] second = new int[6];
	int lineChartData[];
	String lineChartLabels[];
	public static ArrayList<int[]> getList() {
		barChartData = new ArrayList<>();
		ResultSet rs = null;

		try {
			String sql = "SELECT MONTH(`ReserveDate`) AS `date`, sum(`totalprice`) FROM reservation GROUP BY `date`";
			// SELECT COUNT(컬럼) FROM 테이블;
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			// pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int month = rs.getInt(1);
				int totalPrice = rs.getInt(2);
				addMonthTotalPrice(month, totalPrice);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}
		barChartData.add(first);
		barChartData.add(second);

		return barChartData;
	}

	public static void addMonthTotalPrice(int month, int price) {
		for (int i = 1; i <= 12; i++) {
			if (month == i) {
				if (month <= 6) {
					first[i - 1] = price;
				} else {
					second[i - 1] = price;
				}
			}
		}
	}
	public int[] getMonthlyData(String date) {
		String dateStart = date+"-01";
		String dateEnd = date+"-31";
		String[] ymd = date.split("-");
		int year = Integer.parseInt(ymd[0]);
		int month = Integer.parseInt(ymd[1]);
		YearMonth yearMonthObject = YearMonth.of(year, month);
		int daysInMonth = yearMonthObject.lengthOfMonth();
		lineChartData = new int[daysInMonth];
		ResultSet rs = null;
		try {
			String sql = "SELECT ReserveDate, SUM(HeadCount) FROM reservation "
					+ "WHERE ReserveDate >= ? AND ReserveDate <= ? GROUP BY ReserveDate";
			// SELECT COUNT(컬럼) FROM 테이블;
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dateStart);
			pstmt.setString(2, dateEnd);
			// pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String DBdate = rs.getDate(1).toString();
				int headCount = rs.getInt(2);
				getMonthDate(DBdate, headCount);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}
		return lineChartData;
	}
	
	public void getMonthDate(String date, int headCount) {
		String d = date.toString();
		String[] ymd = d.split("-");
		int year = Integer.parseInt(ymd[0]);
		int month = Integer.parseInt(ymd[1]);
		int day = Integer.parseInt(ymd[2])-1;
		for(int i = 0; i <= lineChartData.length; i++) {
			if(day == i) {
				lineChartData[i] = headCount;
			}
		}
		
	}
	public String[] getLabels(String date) {
		String[] ymd = date.split("-");
		int year = Integer.parseInt(ymd[0]);
		int month = Integer.parseInt(ymd[1]);
		YearMonth yearMonthObject = YearMonth.of(year, month);
		int daysInMonth = yearMonthObject.lengthOfMonth();
		String[] Labels = new String[daysInMonth];
		lineChartLabels = CreateLabels(Labels);
		
		return lineChartLabels;
	}
	public String[] CreateLabels(String[] labels) {
		for(int i = 0; i < labels.length; i++) {
			labels[i] = i+1+"일";
		}
		return labels;
	}
}
