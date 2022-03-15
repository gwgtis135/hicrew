package egovframework.main.service;

import java.util.Arrays;

public class MenuDetailVO {
	int MENU_LOG_ID;
	int MENU_ID;
	int LCALS_ID;
	String MENU_NAME;
	byte[] MENU_FILE;
	String MENU_EVENTN;
	String MENU_LINK;
	String MENU_CONTENT;
	String MENU_YN;	
	String MENU_LOG_PERFORMER;						
	String MENU_LOG_DIVISION;						
	String MENU_LOG_DATE;
	
	public int getMENU_LOG_ID() {
		return MENU_LOG_ID;
	}
	public void setMENU_LOG_ID(int mENU_LOG_ID) {
		MENU_LOG_ID = mENU_LOG_ID;
	}
	public int getMENU_ID() {
		return MENU_ID;
	}
	public void setMENU_ID(int mENU_ID) {
		MENU_ID = mENU_ID;
	}
	public int getLCALS_ID() {
		return LCALS_ID;
	}
	public void setLCALS_ID(int lCALS_ID) {
		LCALS_ID = lCALS_ID;
	}
	public String getMENU_NAME() {
		return MENU_NAME;
	}
	public void setMENU_NAME(String mENU_NAME) {
		MENU_NAME = mENU_NAME;
	}
	public byte[] getMENU_FILE() {
		return MENU_FILE;
	}
	public void setMENU_FILE(byte[] mENU_FILE) {
		MENU_FILE = mENU_FILE;
	}
	public String getMENU_EVENTN() {
		return MENU_EVENTN;
	}
	public void setMENU_EVENTN(String mENU_EVENTN) {
		MENU_EVENTN = mENU_EVENTN;
	}
	public String getMENU_LINK() {
		return MENU_LINK;
	}
	public void setMENU_LINK(String mENU_LINK) {
		MENU_LINK = mENU_LINK;
	}
	public String getMENU_CONTENT() {
		return MENU_CONTENT;
	}
	public void setMENU_CONTENT(String mENU_CONTENT) {
		MENU_CONTENT = mENU_CONTENT;
	}
	public String getMENU_YN() {
		return MENU_YN;
	}
	public void setMENU_YN(String mENU_YN) {
		MENU_YN = mENU_YN;
	}
	public String getMENU_LOG_PERFORMER() {
		return MENU_LOG_PERFORMER;
	}
	public void setMENU_LOG_PERFORMER(String mENU_LOG_PERFORMER) {
		MENU_LOG_PERFORMER = mENU_LOG_PERFORMER;
	}
	public String getMENU_LOG_DIVISION() {
		return MENU_LOG_DIVISION;
	}
	public void setMENU_LOG_DIVISION(String mENU_LOG_DIVISION) {
		MENU_LOG_DIVISION = mENU_LOG_DIVISION;
	}
	public String getMENU_LOG_DATE() {
		return MENU_LOG_DATE;
	}
	public void setMENU_LOG_DATE(String mENU_LOG_DATE) {
		MENU_LOG_DATE = mENU_LOG_DATE;
	}
	@Override
	public String toString() {
		return "MenuDetailVO [MENU_LOG_ID=" + MENU_LOG_ID + ", MENU_ID=" + MENU_ID + ", LCALS_ID=" + LCALS_ID
				+ ", MENU_NAME=" + MENU_NAME + ", MENU_FILE=" + Arrays.toString(MENU_FILE) + ", MENU_EVENTN="
				+ MENU_EVENTN + ", MENU_LINK=" + MENU_LINK + ", MENU_CONTENT=" + MENU_CONTENT + ", MENU_YN=" + MENU_YN
				+ ", MENU_LOG_PERFORMER=" + MENU_LOG_PERFORMER + ", MENU_LOG_DIVISION=" + MENU_LOG_DIVISION
				+ ", MENU_LOG_DATE=" + MENU_LOG_DATE + "]";
	}
	
}
