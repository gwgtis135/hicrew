package egovframework.main.service;

public class LCALSVO {
	// <!-- 전통적인 데이터베이스 컬럼명 형태인 A_COLUMN을 CamelCase형태의 자바 프로퍼티명 형태인 aColumn으로 자동으로
	// 매핑하도록 함 -->
	int lcalsLogId;
	int lcalsId;
	String lcalsName;
	String lcalsIntrcn;
	int lcalsLevel;
	String lcalsYn;
	String lcalsLogPerforMer;
	String lcalsLogDivision;
	String LcalsLogDate;
	public int getLcalsLogId() {
		return lcalsLogId;
	}
	public void setLcalsLogId(int lcalsLogId) {
		this.lcalsLogId = lcalsLogId;
	}
	public int getLcalsId() {
		return lcalsId;
	}
	public void setLcalsId(int lcalsId) {
		this.lcalsId = lcalsId;
	}
	public String getLcalsName() {
		return lcalsName;
	}
	public void setLcalsName(String lcalsName) {
		this.lcalsName = lcalsName;
	}
	public String getLcalsIntrcn() {
		return lcalsIntrcn;
	}
	public void setLcalsIntrcn(String lcalsIntrcn) {
		this.lcalsIntrcn = lcalsIntrcn;
	}
	public int getLcalsLevel() {
		return lcalsLevel;
	}
	public void setLcalsLevel(int lcals_level) {
		this.lcalsLevel = lcals_level;
	}
	public String getLcalsYn() {
		return lcalsYn;
	}
	public void setLcalsYn(String lcals_yn) {
		this.lcalsYn = lcals_yn;
	}
	public String getLcalsLogPerforMer() {
		return lcalsLogPerforMer;
	}
	public void setLcalsLogPerforMer(String lcalsLogPerforMer) {
		this.lcalsLogPerforMer = lcalsLogPerforMer;
	}
	public String getLcalsLogDivision() {
		return lcalsLogDivision;
	}
	public void setLcalsLogDivision(String lcalsLogDivision) {
		this.lcalsLogDivision = lcalsLogDivision;
	}
	public String getLcalsLogDate() {
		return LcalsLogDate;
	}
	public void setLcalsLogDate(String lcalsLogDate) {
		LcalsLogDate = lcalsLogDate;
	}
	@Override
	public String toString() {
		return "LCALSVO [lcalsLogId=" + lcalsLogId + ", lcalsId=" + lcalsId + ", lcalsName=" + lcalsName
				+ ", lcalsIntrcn=" + lcalsIntrcn + ", lcalsLevel=" + lcalsLevel + ", lcalsYn=" + lcalsYn
				+ ", lcalsLogPerforMer=" + lcalsLogPerforMer + ", lcalsLogDivision=" + lcalsLogDivision
				+ ", LcalsLogDate=" + LcalsLogDate + "]";
	}
	
}
