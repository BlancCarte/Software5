package DTO;

import java.util.Date;

public class OrderPrice {

	private String orderNum;
	private Date date;
	private int salse;

	public OrderPrice() {
	}

	public OrderPrice(String orderNum, Date date, int sales) {
		this.orderNum = orderNum;
		this.date = date;
		this.salse = sales;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Date getdate() {
		return date;
	}

	public void setdate(Date date) {
		this.date = date;
	}
	
	public int getSalse() {
		return salse;
	}

	public void setSales(int sales) {
		this.salse = sales;
	}


}
