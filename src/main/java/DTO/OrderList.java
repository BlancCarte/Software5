package DTO;

import java.util.Date;

public class OrderList {
	private String orderNum;
	private String name;
	private String phoneNumber;
	private int headcount;
	private String date;
	private Date ddd;
	private String tableNum;

	public OrderList() {
	}

	public OrderList(String OrderNum, String Name, String PhoneNumber, int Headcount, Date Date, String TableNum) {
		this.orderNum = OrderNum;
		this.name = Name;
		this.phoneNumber = PhoneNumber;
		this.headcount = Headcount;
		//this.date = Date;
		this.ddd = Date;
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
		return ddd;
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
		date = ddd.toString();
		return date;
	}


}
