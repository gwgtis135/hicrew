package egovframework.com.ch.service;


public class ChVO {

	int chId;
	int lcalsId;
	String chToDate;
	String chFromDate;
	String chContent;
	String chYn;
	
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
	public int getLcalsId() {
		return lcalsId;
	}
	public void setLcalsId(int lcalsId) {
		this.lcalsId = lcalsId;
	}
	public String getChToDate() {
		return chToDate;
	}
	public void setChToDate(String chToDate) {
		this.chToDate = chToDate;
	}
	public String getChFromDate() {
		return chFromDate;
	}
	public void setChFromDate(String chFromDate) {
		this.chFromDate = chFromDate;
	}
	public String getChContent() {
		return chContent;
	}
	public void setChContent(String chContent) {
		this.chContent = chContent;
	}
	public String getChYn() {
		return chYn;
	}
	public void setChYn(String chYn) {
		this.chYn = chYn;
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
