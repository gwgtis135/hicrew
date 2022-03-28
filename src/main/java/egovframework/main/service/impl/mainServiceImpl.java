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
	private mainMapper mmapper;
	
	@Override
	public String insertLCALS(LCALSVO vo) {
		// 트라이 캐치 처리
		try {
			mmapper.insertLCALS(vo);
			vo.setLcalsId(mmapper.getLCALSID());
			vo.setLcalsLogDivision("ins");
			vo.setLcalsLogPerforMer("admin");
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			mmapper.insertLACLSLOG(vo);
		}
		return "success";
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
	public List<LCALSVO> selectnavLCALS(LCALSVO vo) {
		System.out.println("impl : ");
		List<LCALSVO> listvo = mmapper.selectnavLCALS(vo);
		System.out.println("impl : "+listvo);
		return listvo;
	}

	@Override
	public String insertMD(MenuDetailVO vo) {
		try {
			mmapper.insertMenuDetail(vo);
			vo.setMenuId(mmapper.getMenuDetailID());
			vo.setMenuLogDivision("ins");
			vo.setMenuLogPerformer("admin");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			mmapper.insertMenuDetailLOG(vo);
		}
		return "success";
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
