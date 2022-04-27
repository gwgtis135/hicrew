package egovframework.com.ccm.service.impl;

import java.util.List;

import egovframework.com.ccm.service.CcmVO;
import egovframework.com.ccm.service.DetailCodeVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("CcmMapper")
public interface CcmMapper {
	
	List<CcmVO> selectAllCcm (CcmVO cVO);
	List<DetailCodeVO> selectAllDetail (DetailCodeVO dVO);
	//공통코드 코드 클릭시 상세코드 조회
	List<DetailCodeVO> selectchoseDetail(DetailCodeVO dVO);

}
