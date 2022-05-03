package egovframework.com.ch.service;


public class ChVO {

	int chId;
	int upendId; //메뉴관리
	String chToDate;
	String chDept; 
	String chYn; 
	String dcId; //상세코드 ID
	
	int ChLogId;
	String ChLogPerformer ;
	String ChLogDivision;
	String ChLogDate;
	String ChSearch; //검색조건
	public int getChId() {
		return chId;
	}
	public void setChId(int chId) {
		this.chId = chId;
	}
	public int getUpendId() {
		return upendId;
	}
	public void setUpendId(int upendId) {
		this.upendId = upendId;
	}
	public String getChToDate() {
		return chToDate;
	}
	public void setChToDate(String chToDate) {
		this.chToDate = chToDate;
	}
	public String getChDept() {
		return chDept;
	}
	public void setChDept(String chDept) {
		this.chDept = chDept;
	}
	public String getChYn() {
		return chYn;
	}
	public void setChYn(String chYn) {
		this.chYn = chYn;
	}
	public String getDcId() {
		return dcId;
	}
	public void setDcId(String dcId) {
		this.dcId = dcId;
	}
	public int getChLogId() {
		return ChLogId;
	}
	public void setChLogId(int chLogId) {
		ChLogId = chLogId;
	}
	public String getChLogPerformer() {
		return ChLogPerformer;
	}
	public void setChLogPerformer(String chLogPerformer) {
		ChLogPerformer = chLogPerformer;
	}
	public String getChLogDivision() {
		return ChLogDivision;
	}
	public void setChLogDivision(String chLogDivision) {
		ChLogDivision = chLogDivision;
	}
	public String getChLogDate() {
		return ChLogDate;
	}
	public void setChLogDate(String chLogDate) {
		ChLogDate = chLogDate;
	}
	public String getChSearch() {
		return ChSearch;
	}
	public void setChSearch(String chSearch) {
		ChSearch = chSearch;
	}
	
	
	
}
