package egovframework.menudetail.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.menudetail.service.MenuDetailMapper;
import egovframework.menudetail.service.MenuDetailVO;
import egovframework.menudetail.service.menudetailService;

@Service
public class menudetailServiceImpl implements menudetailService{
	@Autowired MenuDetailMapper mdm;
	
	public List<MenuDetailVO> selectmdm(){
		System.out.println("mdsi");
		return mdm.selectMD();
	}
}
