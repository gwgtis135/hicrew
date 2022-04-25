package egovframework.com.ch.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.com.ch.service.ChService;
import egovframework.com.ch.service.ChVO;

@Service
public class ChServiceImpl implements ChService {

	@Autowired ChMapper chmapper;
	
	@Override
	public List<ChVO> selectAllCh(ChVO chVO) {
		List<ChVO> listvo = chmapper.selectAllCh(chVO);
		System.out.println("서비스임플 테스트 완료 ");
		return listvo;
	}

	@Override
	public ChVO selectCh(ChVO chVO) {
		return null;
	}

	@Override
	public int updateCh(ChVO chVO) {
		return 0;
	}

	@Override
	public int deleteCh(ChVO chVO) {
		return 0;
	}

	@Override
	public int insertCh(ChVO chVO) {
		return 0;
	}

	@Override
	public int insertChLog(ChVO chVO) {
		return 0;
	}

}
