package DAO_test;

import static org.junit.Assert.assertEquals;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.junit.Test;

import DAO.*;
import DTO.*;
import DataTier.*;
import DataTier_test.*;

public class DaoTest {
	private DAO dao = DAO.getInstance();
	private static Connection conn;
	private static PreparedStatement pstmt;

	
	@Test
	public void addAndDeleteDataTest() throws Exception{//예약 확인 테스트
		Reservation_test resTest = new Reservation_test("2021-06-01-1234", "김정락", "010-7155-0203", "2021-06-01", "12:00:00", "4-A", "4", 50000);
		OrderList test = null;
		Reservation res = new Reservation();
		GetOrderList testList = new GetOrderList();
		UpdateReserv resetData = new UpdateReserv();
		res.reserv("2021-06-01-1234", "김정락", "010-7155-0203", "2021-06-01", "12:00:00", "4-A", "4", 50000);//예약정보를 DB에 넣는다
		
		test = testList.getTestList("2021-06-01-1234"); //예약정보를 받아온다.
		
		assertEquals(resTest.getOnum(),test.getOrderNum());
		assertEquals(resTest.getName(),test.getName());
		assertEquals(resTest.getPnum(),test.getPhoneNumber());
		assertEquals(resTest.getDate(),test.getStringdate());
		assertEquals(resTest.getTime(),test.getTime());
		assertEquals(resTest.getSeat(),test.gettableNum());
		
		assertEquals(1,resetData.deletereserv("2021-06-01-1234"));
	}
	@Test
	public void updateDataTest() {//예약 변경 테스트
		Reservation_test resTest = new Reservation_test("2021-06-02-1234", "김정락", "010-7155-0203", "2021-06-02", "13:00:00", "4-A", "4", 50000);
		Reservation res = new Reservation();
		UpdateReserv resetData = new UpdateReserv();
		res.reserv("2021-06-01-1234", "김정락", "010-7155-0203", "2021-06-01", "12:00:00", "4-A", "4", 50000);
		resetData.update("2021-06-02-1234","2021-06-02", "13:00:00", "4-A",  "4", 50000, "2021-06-01-1234");//날짜 시간 변경시
		OrderList test = null;
		GetOrderList testList = new GetOrderList();
		test = testList.getTestList(resTest.getOnum());
		
		assertEquals(resTest.getOnum(),test.getOrderNum());
		assertEquals(resTest.getDate(),test.getStringdate());
		assertEquals(resTest.getTime(),test.getTime());
		
		assertEquals(1,resetData.deletereserv(test.getOrderNum()));
	}

	@Test
	public void addUserTest() throws Exception{//회원가입 테스트
		User user1 = new User("jhkim", "5877", "김정락", "19990114", "남", "jhkim@naver.com", "010-6398-0875");
		Signup signup = new Signup();
		Login login = new Login();
		signup.signUp("jhkim", "5877", "김정락", "19990114", "남", "jhkim@naver.com", "010-6398-0875", "1", "1");
		
		assertEquals(1, login.idCheck(user1.getUserId(),user1.getUserPw()));
	}
	
	@Test
	public void updateUserTest() {//회원정보수정 테스트
		Update update = new Update();
		User user1 = new User("jhkim", "5877", "김정락", "19990114", "남", "jhkim@naver.com", "010-6398-0875");
		update.update("jhkim", "1111", "김정락", "19990114", "남", "jhkim@naver.com", "010-6398-0875", "1", "1");
		
		User updatedUser = update.userInfo(user1.getUserId());
		assertEquals(user1.getUserId(), updatedUser.getUserId());
		assertEquals(user1.getUserPw(), updatedUser.getUserPw());
		assertEquals(user1.getUserName(), updatedUser.getUserName());
		assertEquals(user1.getUserBirth(), updatedUser.getUserBirth());
		assertEquals(user1.getUserGender(), updatedUser.getUserGender());
		assertEquals(user1.getUserEmail(), updatedUser.getUserEmail());
		assertEquals(user1.getUserPhone(), updatedUser.getUserPhone());
	}
}
