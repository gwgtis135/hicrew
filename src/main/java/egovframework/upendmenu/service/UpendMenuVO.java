package egovframework.upendmenu.service;

public class UpendMenuVO {

	private int upendLogId;
	private int upendId;
	private int upendThema;
	private int upendType;
	private int upendUpendMenu;
	private String upendIntrcn;
	private String upendName;
	private String upendLink;
	private String upendYn;
	private String upendLogPerforMer;
	private String upendLogDivision;
	private String upendLogDate;
	@Override
	public String toString() {
		return "UpendMenuVO [upendLogId=" + upendLogId + ", upendId=" + upendId + ", upendThema=" + upendThema
				+ ", upendType=" + upendType + ", upendUpendMenu=" + upendUpendMenu + ", upendIntrcn=" + upendIntrcn
				+ ", upendName=" + upendName + ", upendLink=" + upendLink + ", upendYn=" + upendYn
				+ ", upendLogPerforMer=" + upendLogPerforMer + ", upendLogDivision=" + upendLogDivision
				+ ", upendLogDate=" + upendLogDate + "]";
	}
	public int getUpendLogId() {
		return upendLogId;
	}
	public void setUpendLogId(int upendLogId) {
		this.upendLogId = upendLogId;
	}
	public int getUpendId() {
		return upendId;
	}
	public void setUpendId(int upendId) {
		this.upendId = upendId;
	}
	public int getUpendThema() {
		return upendThema;
	}
	public void setUpendThema(int upendThema) {
		this.upendThema = upendThema;
	}
	public int getUpendType() {
		return upendType;
	}
	public void setUpendType(int upendType) {
		this.upendType = upendType;
	}
	public int getUpendUpendMenu() {
		return upendUpendMenu;
	}
	public void setUpendUpendMenu(int upendUpendMenu) {
		this.upendUpendMenu = upendUpendMenu;
	}
	public String getUpendIntrcn() {
		return upendIntrcn;
	}
	public void setUpendIntrcn(String upendIntrcn) {
		this.upendIntrcn = upendIntrcn;
	}
	public String getUpendName() {
		return upendName;
	}
	public void setUpendName(String upendName) {
		this.upendName = upendName;
	}
	public String getUpendLink() {
		return upendLink;
	}
	public void setUpendLink(String upendLink) {
		this.upendLink = upendLink;
	}
	public String getUpendYn() {
		return upendYn;
	}
	public void setUpendYn(String upendYn) {
		this.upendYn = upendYn;
	}
	public String getUpendLogPerforMer() {
		return upendLogPerforMer;
	}
	public void setUpendLogPerforMer(String upendLogPerforMer) {
		this.upendLogPerforMer = upendLogPerforMer;
	}
	public String getUpendLogDivision() {
		return upendLogDivision;
	}
	public void setUpendLogDivision(String upendLogDivision) {
		this.upendLogDivision = upendLogDivision;
	}
	public String getUpendLogDate() {
		return upendLogDate;
	}
	public void setUpendLogDate(String upendLogDate) {
		this.upendLogDate = upendLogDate;
	}
	
}
