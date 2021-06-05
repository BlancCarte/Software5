package DataTier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.YearMonth;
import java.util.Vector;

import DAO.DAO;
import DTO.GetMenuStatistic;
import DTO.MenuInfo;

public class GetMenuFavorite {
	private static DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;
	GetMenuStatistic st;
	Vector<MenuInfo> menuVector;
	String arrDishName[];
	float arrData[];

	public GetMenuStatistic getMenuArr() {
		menuVector = new Vector<>();
		ResultSet rs = null;

		try {
			String sql = "SELECT`order`.DishId, `dish`.DishName , SUM(`order`.DishCount) FROM `order` INNER JOIN `dish` ON `order`.DishId = `dish`.DishId "
					+ "GROUP BY DishId order BY SUM(`order`.DishCount) DESC";
			// SELECT COUNT(컬럼) FROM 테이블;
			conn = dao.getConnection();
			pstmt = conn.prepareStatement(sql);
			// pstmt.setString(1, ID); // 1은 첫번째 물음표
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int dishId = rs.getInt(1);
				String dishName = rs.getString(2);
				int dishCount = rs.getInt(3);
				MenuInfo m = new MenuInfo(dishName, dishCount);
				menuVector.add(m);
			}
		} catch (SQLException e) {
			System.out.println(e);
		}

		return getStatistic(menuVector);
	}

	public GetMenuStatistic getStatistic(Vector<MenuInfo> menuVector) {
		arrDishName = new String[menuVector.size()];
		arrData = new float[menuVector.size()];
		float tmp = 0;
		int total = 0;
		for (int i = 0; i < menuVector.size(); i++) {
			MenuInfo m = menuVector.get(i);
			arrData[i] = m.getDishCount();
			arrDishName[i] = m.getDishName();
			total += arrData[i];
		}
		for (int i = 0; i < menuVector.size(); i++) {
			tmp = arrData[i] / total;
			arrData[i] = Math.round(tmp * 100);

		}
		st = new GetMenuStatistic(arrDishName, arrData);

		return st;
	}
}
