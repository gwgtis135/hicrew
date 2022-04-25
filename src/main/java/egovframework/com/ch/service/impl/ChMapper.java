package egovframework.com.ch.service.impl;

import java.util.List;

import egovframework.com.ch.service.ChVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("ChMapper")
public interface ChMapper {

	List<ChVO> selectAllCh(ChVO chVO);
	ChVO selectCh(ChVO chVO);
	int updateCh(ChVO chVO);
	int deleteCh(ChVO chVO);
	int insertCh(ChVO chVO);
	int insertChLog(ChVO chVO);
}
