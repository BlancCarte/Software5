package DTO;

public class GetMenuStatistic {
	String[] arrDishName;
	float[] arrData;
	public GetMenuStatistic(String[] arrDishName, float[] arrData) {
		this.arrDishName = arrDishName;
		this.arrData = arrData;
	}
	
	public String[] getLabels() {
		return arrDishName;
	}
	
	public float[] getDatas() {
		return arrData;
	}
}
