package egovframework.upendmenu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.upendmenu.service.UpendMenuMapper;
import egovframework.upendmenu.service.UpendMenuService;
import egovframework.upendmenu.service.UpendMenuVO;

@Service
public class UpendMenuServiceImpl implements UpendMenuService{

	@Autowired
	private UpendMenuMapper umm; 
	
	@Override
	public List<UpendMenuVO> selectAllum() {
		System.out.println("upendmenuserviceimpl================");
		return umm.selectAllum();
	}

}
