package egovframework.com.ccm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.com.ccm.service.CcmService;
import egovframework.com.ccm.service.CcmVO;
import egovframework.com.ccm.service.DetailCodeVO;

	

@Service
public class CcmServiceImpl implements CcmService {

	@Autowired CcmMapper cmapper;
	
	
	
	@Override
	public List<CcmVO> selectAllCcm(CcmVO cVO) {
		
		List<CcmVO> listCcmvo = cmapper.selectAllCcm(cVO);
		System.out.println("공통관리 서비스 selectAll serviceImpl 메서드 실행완료");
		return listCcmvo;
	}

	@Override
	public List<DetailCodeVO> selectAllDetail(DetailCodeVO dVO) {
		List<DetailCodeVO> listdetailvo = cmapper.selectAllDetail(dVO);
		System.out.println("상세코드 서비스 selectAll serviceImpl 메서드 실행완료");
		return listdetailvo;
		
	}

	@Override
	public List<DetailCodeVO> selectchoseDetail(DetailCodeVO dVO) {
		List<DetailCodeVO> listdetailvo = cmapper.selectchoseDetail(dVO);
		System.out.println("공통코드 클릭시 상세코드 조회 serviceImpl 메서드 실행완료");
		System.out.println(listdetailvo);
		return listdetailvo;
	}

}
