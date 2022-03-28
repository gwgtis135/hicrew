package egovframework.main.service;

import java.util.Arrays;

public class MenuDetailVO {
	int menuLogId;
	int menuId;
	int lcalsId;
	String menuName;
	byte[] menuFile;
	String menuEventn;
	String menuLink;
	String menuContent;
	String menuYn;
	String menuLogPerformer;
	String menuLogDivision;
	String menuLogDate;
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
	public int getLcalsId() {
		return lcalsId;
	}
	public void setLcalsId(int lcalsId) {
		this.lcalsId = lcalsId;
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
	@Override
	public String toString() {
		return "MenuDetailVO [menuLogId=" + menuLogId + ", menuId=" + menuId + ", lcalsId=" + lcalsId + ", menuName="
				+ menuName + ", menuFile=" + Arrays.toString(menuFile) + ", menuEventn=" + menuEventn + ", menuLink="
				+ menuLink + ", menuContent=" + menuContent + ", menuYn=" + menuYn + ", menuLogPerformer="
				+ menuLogPerformer + ", menuLogDivision=" + menuLogDivision + ", menuLogDate=" + menuLogDate + "]";
	}
	
}
