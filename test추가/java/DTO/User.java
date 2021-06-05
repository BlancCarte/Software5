package DTO;

//회원가입시 입력받은 회원정보를 저장하기 위한 클래스, 개인정보이기 떄문에 private, MBD_SignUp에서 참조하기 위해 get,set메소두 생성
public class User {
	private String USER_ID;
	private String USER_PW;
	private String USER_NAME;
	private String USER_BIRTH;
	private String USER_GENDER;
	private String USER_EMAIL;
	private String USER_PHONE;
	
	public User() {}
	
	public User(String USER_ID, String USER_PW, String USER_NAME, String USER_BIRTH, String USER_GENDER, String USER_EMAIL, String USER_PHONE) {
		this.USER_ID = USER_ID;
		this.USER_PW = USER_PW;
		this.USER_NAME = USER_NAME;
		this.USER_BIRTH = USER_BIRTH;
		this.USER_GENDER = USER_GENDER;
		this.USER_EMAIL = USER_EMAIL;
		this.USER_PHONE = USER_PHONE;
	}
	public String getUserId() {
		return USER_ID;
	}

	public void setUserId(String SG_ID) {
		USER_ID = SG_ID;
	}

	public String getUserPw() {
		return USER_PW;
	}

	public void setUserPw(String SG_PW) {
		USER_PW = SG_PW;
	}

	public String getUserName() {
		return USER_NAME;
	}

	public void setUserName(String SG_NAME) {
		USER_NAME = SG_NAME;
	}

	public String getUserBirth() {
		return USER_BIRTH;
	}

	public void setUserBirth(String SG_BIRTH) {
		USER_BIRTH = SG_BIRTH;
	}

	public String getUserGender() {
		return USER_GENDER;
	}

	public void setUserGender(String SG_GENDER) {
		USER_GENDER = SG_GENDER;
	}

	public String getUserEmail() {
		return USER_EMAIL;
	}

	public void setUserEmail(String SG_EMAIL) {
		USER_EMAIL = SG_EMAIL;
	}

	public String getUserPhone() {
		return USER_PHONE;
	}

	public void setUserPhone(String SG_PHONE) {
		USER_PHONE = SG_PHONE;
	}

}
