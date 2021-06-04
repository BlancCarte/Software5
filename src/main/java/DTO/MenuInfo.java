package DTO;

public class MenuInfo {
	private String dishName;
	private int dishCount;
	
	public MenuInfo(String dishName, int dishCount) {
		this.dishName = dishName;
		this.dishCount = dishCount;
	}
	public String getDishName() {
		return dishName;
	}
	public void setDishName(String dishNum) {
		this.dishName = dishNum;
	}
	public int getDishCount() {
		return dishCount;
	}
	public void setDishCount(int dishCount) {
		this.dishCount = dishCount;
	}
}
