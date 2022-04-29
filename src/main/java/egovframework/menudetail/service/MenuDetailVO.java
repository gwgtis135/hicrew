package egovframework.menudetail.service;

import java.util.Arrays;

public class MenuDetailVO {
	private int menuLogId;
	private int menuId;
	private int UpendId;
	private String UpendName;
	private String menuName;
	private byte[] menuFile;
	private String menuEventn;
	private String menuLink;
	private String menuContent;
	private String menuYn;
	private String menuLogPerformer;
	private String menuLogDivision;
	private String menuLogDate;
	// 위에서부터 로그id, 메뉴id, 대분류id, 이미지 이름, 이미지, 이미지 확장자, 링크, 내용, 사용유무, 로그 발생자, 로그 종류, 로그 날짜

	@Override
	public String toString() {
		return "MenuDetailVO [menuLogId=" + menuLogId + ", menuId=" + menuId + ", UpendId=" + UpendId + ", UpendName="
				+ UpendName + ", menuName=" + menuName + ", menuFile=" + Arrays.toString(menuFile) + ", menuEventn="
				+ menuEventn + ", menuLink=" + menuLink + ", menuContent=" + menuContent + ", menuYn=" + menuYn
				+ ", menuLogPerformer=" + menuLogPerformer + ", menuLogDivision=" + menuLogDivision + ", menuLogDate="
				+ menuLogDate + "]";
	}
	public int getMenuLogId() {
		return menuLogId;
	}
	public void setMenuLogId(int menuLogId) {
		this.menuLogId = menuLogId;
	}
	public int getMenuId() {
		return menuId;
	}
	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}
	public int getUpendId() {
		return UpendId;
	}
	public void setUpendId(int upendId) {
		UpendId = upendId;
	}
	public String getUpendName() {
		return UpendName;
	}
	public void setUpendName(String upendName) {
		UpendName = upendName;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public byte[] getMenuFile() {
		return menuFile;
	}
	public void setMenuFile(byte[] menuFile) {
		this.menuFile = menuFile;
	}
	public String getMenuEventn() {
		return menuEventn;
	}
	public void setMenuEventn(String menuEventn) {
		this.menuEventn = menuEventn;
	}
	public String getMenuLink() {
		return menuLink;
	}
	public void setMenuLink(String menuLink) {
		this.menuLink = menuLink;
	}
	public String getMenuContent() {
		return menuContent;
	}
	public void setMenuContent(String menuContent) {
		this.menuContent = menuContent;
	}
	public String getMenuYn() {
		return menuYn;
	}
	public void setMenuYn(String menuYn) {
		this.menuYn = menuYn;
	}
	public String getMenuLogPerformer() {
		return menuLogPerformer;
	}
	public void setMenuLogPerformer(String menuLogPerformer) {
		this.menuLogPerformer = menuLogPerformer;
	}
	public String getMenuLogDivision() {
		return menuLogDivision;
	}
	public void setMenuLogDivision(String menuLogDivision) {
		this.menuLogDivision = menuLogDivision;
	}
	public String getMenuLogDate() {
		return menuLogDate;
	}
	public void setMenuLogDate(String menuLogDate) {
		this.menuLogDate = menuLogDate;
	}
}
