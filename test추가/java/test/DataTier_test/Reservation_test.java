package DataTier_test;

public class Reservation_test {
	private String onum;
	private String name; 
	private String pnum; 
	private String date; 
	private String time; 
	private String seat; 
	private String head; 
	private int price;
	
	public Reservation_test(String onum, String name, String pnum, String date, String time, String seat, String head, int price) {
		this.onum = onum;
		this.name = name;
		this.pnum = pnum;
		this.date = date;
		this.time = time;
		this.seat = seat;
		this.head = head;
		this.price = price;
	}

	public String getOnum() {
		return onum;
	}

	public void setOnum(String onum) {
		this.onum = onum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
