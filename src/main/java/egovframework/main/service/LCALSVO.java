package egovframework.main.service;

public class LCALSVO {
	int LCALS_LOG_ID;
	int LCALS_ID;
	String LCALS_NAME;
	String LCALS_INTRCN;
	int LCALS_LEVEL;
	String LCALS_YN;
	String LCALS_LOG_DIVISION;
	String LCALS_LOG_PERFORMER;
	String LCALS_LOG_DATE;
	
	public int getLCALS_ID() {
		return LCALS_ID;
	}
	public void setLCALS_ID(int lCALS_ID) {
		LCALS_ID = lCALS_ID;
	}
	public String getLCALS_NAME() {
		return LCALS_NAME;
	}
	public void setLCALS_NAME(String lCALS_NAME) {
		LCALS_NAME = lCALS_NAME;
	}
	public String getLCALS_INTRCN() {
		return LCALS_INTRCN;
	}
	public void setLCALS_INTRCN(String lCALS_INTRCN) {
		LCALS_INTRCN = lCALS_INTRCN;
	}
	public int getLCALS_LEVEL() {
		return LCALS_LEVEL;
	}
	public void setLCALS_LEVEL(int lCALS_LEVEL) {
		LCALS_LEVEL = lCALS_LEVEL;
	}
	public String getLCALS_YN() {
		return LCALS_YN;
	}
	public void setLCALS_YN(String lCALS_YN) {
		LCALS_YN = lCALS_YN;
	}
	public int getLCALS_LOG_ID() {
		return LCALS_LOG_ID;
	}
	public void setLCALS_LOG_ID(int lCALS_LOG_ID) {
		LCALS_LOG_ID = lCALS_LOG_ID;
	}
	public String getLCALS_LOG_DIVISION() {
		return LCALS_LOG_DIVISION;
	}
	public void setLCALS_LOG_DIVISION(String lCALS_LOG_DIVISION) {
		LCALS_LOG_DIVISION = lCALS_LOG_DIVISION;
	}
	public String getLCALS_LOG_PERFORMER() {
		return LCALS_LOG_PERFORMER;
	}
	public void setLCALS_LOG_PERFORMER(String lCALS_LOG_PERFORMER) {
		LCALS_LOG_PERFORMER = lCALS_LOG_PERFORMER;
	}
	public String getLCALS_LOG_DATE() {
		return LCALS_LOG_DATE;
	}
	public void setLCALS_LOG_DATE(String lCALS_LOG_DATE) {
		LCALS_LOG_DATE = lCALS_LOG_DATE;
	}
	@Override
	public String toString() {
		return "LCALSVO [LCALS_LOG_ID=" + LCALS_LOG_ID + ", LCALS_ID=" + LCALS_ID + ", LCALS_NAME=" + LCALS_NAME
				+ ", LCALS_INTRCN=" + LCALS_INTRCN + ", LCALS_LEVEL=" + LCALS_LEVEL + ", LCALS_YN=" + LCALS_YN
				+ ", LCALS_LOG_DIVISION=" + LCALS_LOG_DIVISION + ", LCALS_LOG_PERFORMER=" + LCALS_LOG_PERFORMER
				+ ", LCALS_LOG_DATE=" + LCALS_LOG_DATE + "]";
	}
	
	
	
}
