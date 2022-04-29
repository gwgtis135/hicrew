package egovframework.main.service;

import java.util.List;

import egovframework.menudetail.service.MenuDetailVO;

public interface mainService {
	public String insertLCALS(LCALSVO vo);
	public String deleteLCALS(LCALSVO vo); 
	public String updateLCALS(LCALSVO vo);
	public List<LCALSVO> selectALLLCALS();
	public LCALSVO selectLCALS(LCALSVO vo);
	public List<LCALSVO> selectnavLCALS(LCALSVO vo);
	
	public String insertMD(MenuDetailVO vo);
	public String deleteMD(MenuDetailVO vo);
	public String updateMD(MenuDetailVO vo);
	public List<MenuDetailVO> selectALLMD(MenuDetailVO vo);
	public MenuDetailVO selectMD(MenuDetailVO vo);
}
