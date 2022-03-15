package egovframework.main.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("mainMapper")
public interface mainMapper {
	//LCALS : 대분류
	// 
	public int insertLCALS(LCALSVO vo);
	public int insertLACLSLOG(LCALSVO vo);
	public int deleteLCALS(LCALSVO vo);
	public int updateLCALS(LCALSVO vo);
	public List<LCALSVO> selectALLLCALS();
	public List<LCALSVO> selectALLLCALSLOG();
	public LCALSVO selectLCALS(LCALSVO vo);
	public LCALSVO selectLCALSLOG(LCALSVO vo);

	public int getLCALSID();
	
	public int insertMenuDetail(MenuDetailVO vo);
	public int insertMenuDetailLOG(MenuDetailVO vo);
	public int deleteMenuDetail(MenuDetailVO vo);
	public int updateMenuDetail(MenuDetailVO vo);
	public List<MenuDetailVO> selectALLMenuDetail();
	public List<MenuDetailVO> selectALLMenuDetailLOG();
	public MenuDetailVO selectMenuDetail(MenuDetailVO vo);
	public LCALSVO selectMenuDetailLOG(LCALSVO vo);
	
	public int getMenuDetailID();
}
