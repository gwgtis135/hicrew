package egovframework.com.ch.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.ch.service.ChService;
import egovframework.com.ch.service.ChVO;

@Controller
public class ChController {
	
	@Autowired 
	private ChService chservice;
	
	@RequestMapping("ChSelectAll.do")
	public  ModelAndView ChselectAll(Model model, ChVO cvo){
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<ChVO> list = chservice.selectAllCh(cvo);
		mv.addObject("chdatas",list);
		System.out.println("list 값 출력하기");
		System.out.println(list);
		
		return mv;
	}

//	/* 그룹웨어 페이지 이동*/
	@RequestMapping("group.do")
	public String goGroup() {
		System.out.println("그룹웨어 컨트롤러 호출");
		return "main/movegroup";
	}
	
	
	@RequestMapping("ch.do")
	public String goCh() {
		System.out.println("연혁 관리 테스트 jsp 컨트롤러 호출");
		return "ch/Ch";
	}
	@RequestMapping("chManage.do")
	public String goChManage() {
		System.out.println("연혁관리페이지 컨트롤러 호출");
		return "ch/ChManage";
	}
	
	//전체검색
	
}
