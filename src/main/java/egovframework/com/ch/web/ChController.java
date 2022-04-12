package egovframework.com.ch.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChController {

	@RequestMapping("ch.do")
	public String goCh() {
		System.out.println("연혁관리페이지 컨트롤러 호출");
		return "ch/ChTest";
	}
	@RequestMapping("chManage.do")
	public String goChManage() {
		System.out.println("연혁관리페이지 컨트롤러 호출");
		return "ch/ChManage";
	}
	
	//전체검색
	
}
