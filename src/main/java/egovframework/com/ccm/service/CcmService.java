package egovframework.com.ccm.service;

import java.util.List;

public interface CcmService {

	List<CcmVO> selectAllCcm (CcmVO cVO);
	List<DetailCodeVO> selectAllDetail (DetailCodeVO dVO);
	//공통코드 코드 클릭시 상세코드 조회
	List<DetailCodeVO> selectchoseDetail(DetailCodeVO dVO);
}
