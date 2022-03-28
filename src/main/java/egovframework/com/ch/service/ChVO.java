package egovframework.com.ch.service;

public class ChVO {

	int CH_ID;
	int LCALS_ID;
	String CH_TO_DATE;
	String CH_FROM_DATE;
	String CH_CONTENT;
	String CH_YN;
	int CH_LOG_ID;
	String CH_LOG_PERFORMER;
	String CH_LOG_DIVISION;
	String CH_LOG_DATE;
	
	public int getCH_LOG_ID() {
		return CH_LOG_ID;
	}
	public void setCH_LOG_ID(int cH_LOG_ID) {
		CH_LOG_ID = cH_LOG_ID;
	}
	public String getCH_LOG_PERFORMER() {
		return CH_LOG_PERFORMER;
	}
	public void setCH_LOG_PERFORMER(String cH_LOG_PERFORMER) {
		CH_LOG_PERFORMER = cH_LOG_PERFORMER;
	}
	public String getCH_LOG_DIVISION() {
		return CH_LOG_DIVISION;
	}
	public void setCH_LOG_DIVISION(String cH_LOG_DIVISION) {
		CH_LOG_DIVISION = cH_LOG_DIVISION;
	}
	public String getCH_LOG_DATE() {
		return CH_LOG_DATE;
	}
	public void setCH_LOG_DATE(String cH_LOG_DATE) {
		CH_LOG_DATE = cH_LOG_DATE;
	}
	public int getCH_ID() {
		return CH_ID;
	}
	public void setCH_ID(int cH_ID) {
		CH_ID = cH_ID;
	}
	public int getLCALS_ID() {
		return LCALS_ID;
	}
	public void setLCALS_ID(int lCALS_ID) {
		LCALS_ID = lCALS_ID;
	}
	public String getCH_FROM_DATE() {
		return CH_FROM_DATE;
	}
	public void setCH_FROM_DATE(String cH_FROM_DATE) {
		CH_FROM_DATE = cH_FROM_DATE;
	}
	public String getCH_TO_DATE() {
		return CH_TO_DATE;
	}
	public void setCH_TO_DATE(String cH_TO_DATE) {
		CH_TO_DATE = cH_TO_DATE;
	}
	public String getCH_CONTENT() {
		return CH_CONTENT;
	}
	public void setCH_CONTENT(String cH_CONTENT) {
		CH_CONTENT = cH_CONTENT;
	}
	public String getCH_YN() {
		return CH_YN;
	}
	public void setCH_YN(String cH_YN) {
		CH_YN = cH_YN;
	}
	@Override
	public String toString() {
		return "ChVO [CH_ID=" + CH_ID + ", LCALS_ID=" + LCALS_ID + ", CH_TO_DATE=" + CH_TO_DATE + ", CH_FROM_DATE="
				+ CH_FROM_DATE + ", CH_CONTENT=" + CH_CONTENT + ", CH_YN=" + CH_YN + ", CH_LOG_ID=" + CH_LOG_ID
				+ ", CH_LOG_PERFORMER=" + CH_LOG_PERFORMER + ", CH_LOG_DIVISION=" + CH_LOG_DIVISION + ", CH_LOG_DATE="
				+ CH_LOG_DATE + "]";
	}
	
	
}
