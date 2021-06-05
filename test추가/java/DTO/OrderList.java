package DTO;

import java.util.Date;

public class OrderList {
	private String orderNum;
	private String name;
	private String phoneNumber;
	private int headcount;
	private String date;
	private Date date_notString;
	private String time;
	private String tableNum;

	public OrderList() {
	}

	public OrderList(String OrderNum, String Name, String PhoneNumber, int Headcount, Date Date, String time, String TableNum) {
		this.orderNum = OrderNum;
		this.name = Name;
		this.phoneNumber = PhoneNumber;
		this.headcount = Headcount;
		this.date_notString = Date;
		this.time = time;
		this.tableNum = TableNum;
	}
	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public int getheadcount() {
		return headcount;
	}

	public void setheadcount(int headcount) {
		this.headcount = headcount;
	}
	public Date getdate() {
		return date_notString;
	}

	public void setdate(String date) {
		this.date = date;
	}
	public String gettableNum() {
		return tableNum;
	}

	public void settableNum(String tableNum) {
		this.tableNum = tableNum;
	}
	public String getStringdate() {
		date = date_notString.toString();
		return date;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTime() {
		return time;
	}

}
