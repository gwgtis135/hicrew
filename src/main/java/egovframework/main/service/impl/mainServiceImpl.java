package egovframework.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.main.service.LCALSVO;
import egovframework.main.service.MenuDetailVO;
import egovframework.main.service.mainMapper;
import egovframework.main.service.mainService;

@Service
public class mainServiceImpl implements mainService {

	@Autowired
	mainMapper mmapper;
	
	@Override
	public String insertLCALS(LCALSVO vo) {
		vo.setLCALS_LOG_DIVISION("ins");
		vo.setLCALS_LOG_PERFORMER("");
		// 트라이 캐치 처리
		mmapper.insertLCALS(vo);
		mmapper.insertLACLSLOG(vo);
		return null;
	}

	@Override
	public String deleteLCALS(LCALSVO vo) {
		return null;
	}

	@Override
	public String updateLCALS(LCALSVO vo) {
		return null;
	}

	@Override
	public List<LCALSVO> selectALLLCALS() {
		return null;
	}

	@Override
	public LCALSVO selectLCALS(LCALSVO vo) {
		return null;
	}

	@Override
	public String insertMD(MenuDetailVO vo) {
		return null;
	}

	@Override
	public String deleteMD(MenuDetailVO vo) {
		return null;
	}

	@Override
	public String updateMD(MenuDetailVO vo) {
		return null;
	}

	@Override
	public List<MenuDetailVO> selectALLMD(MenuDetailVO vo) {
		return null;
	}

	@Override
	public MenuDetailVO selectMD(MenuDetailVO vo) {
		return null;
	}

}
