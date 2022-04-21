package egovframework.com.ch.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChController {

	/* 그룹웨어 페이지 이동*/
	@RequestMapping("group.do")
	public String goGroup() {
		System.out.println("그룹웨어 컨트롤러 호출");
		return "main/movegroup";
	}
	
	
	@RequestMapping("ch.do")
	public String goCh() {
		System.out.println("연혁 관리 테스트 jsp 컨트롤러 호출");
		return "main/Test";
	}
	@RequestMapping("chManage.do")
	public String goChManage() {
		System.out.println("연혁관리페이지 컨트롤러 호출");
		return "ch/ChManage";
	}
	
	//전체검색
	
}
