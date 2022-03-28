package egovframework.com.ch.service;

import java.util.List;

public interface ChService {

	List<ChVO> selectAllCh(ChVO chVO);
	ChVO selectCh(ChVO chVO);
	int updateCh(ChVO chVO);
	int deleteCh(ChVO chVO);
	int insertCh(ChVO chVO);
	int insertChLog(ChVO chVO);
}
