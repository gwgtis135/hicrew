package egovframework.com.ccm.service;

/*
 * 공통코드 vo 
 * 작성자 : 박종현 
*/
public class CcmVO {
	int ccId;
	String ccCode;
	String ccName;
	String ccUserdefine;
	String ccYn;
	public int getCcId() {
		return ccId;
	}
	public void setCcId(int ccId) {
		this.ccId = ccId;
	}
	public String getCcCode() {
		return ccCode;
	}
	public void setCcCode(String ccCode) {
		this.ccCode = ccCode;
	}
	public String getCcName() {
		return ccName;
	}
	public void setCcName(String ccName) {
		this.ccName = ccName;
	}
	public String getCcUserdefine() {
		return ccUserdefine;
	}
	public void setCcUserdefinecol(String ccUserdefine) {
		this.ccUserdefine = ccUserdefine;
	}
	public String getCcYn() {
		return ccYn;
	}
	public void setCcYn(String ccYn) {
		this.ccYn = ccYn;
	}
	@Override
	public String toString() {
		return "CcmVO [ccId=" + ccId + ", ccCode=" + ccCode + ", ccName=" + ccName + ", ccUserdefine="
				+ ccUserdefine + ", ccYn=" + ccYn + "]";
	}
	
	
	
	
}
