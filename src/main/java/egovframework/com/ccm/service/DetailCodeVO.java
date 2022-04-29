package egovframework.com.ccm.service;
/*
 * 상세코드 vo 
 * 작성자 : 박종현 
*/
public class DetailCodeVO {

	int dcId;
	String ccCode;
	String dcCode;
	String dcName;
	String dcUserdefinecol;
	String dcYn;
	public int getDcId() {
		return dcId;
	}
	public void setDcId(int dcId) {
		this.dcId = dcId;
	}
	public String getCcCode() {
		return ccCode;
	}
	public void setCcCode(String ccCode) {
		this.ccCode = ccCode;
	}
	public String getDcCode() {
		return dcCode;
	}
	public void setDcCode(String dcCode) {
		this.dcCode = dcCode;
	}
	public String getDcName() {
		return dcName;
	}
	public void setDcName(String dcName) {
		this.dcName = dcName;
	}
	public String getDcUserdefinecol() {
		return dcUserdefinecol;
	}
	public void setDcUserdefinecol(String dcUserdefinecol) {
		this.dcUserdefinecol = dcUserdefinecol;
	}
	public String getDcYn() {
		return dcYn;
	}
	public void setDcYn(String dcYn) {
		this.dcYn = dcYn;
	}
	@Override
	public String toString() {
		return "DetailCode [dcId=" + dcId + ", ccCode=" + ccCode + ", dcCode=" + dcCode + ", dcName=" + dcName
				+ ", dcUserdefinecol=" + dcUserdefinecol + ", dcYn=" + dcYn + "]";
	}
	
	
	
	
	
	
	
}
