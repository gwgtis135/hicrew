package egovframework.com.ccm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CcmController {

//	공통 상세코드 목록 페이지 이동 
	@RequestMapping("ccmCodeList.do")
	public String goccmCodeList() {
		System.out.println("공통관리 목록 페이지 호출");
		return "ccm/ccmCodeList";
	}
	
//	공통 상세코드 등록 페이지 이동 
	@RequestMapping("ccmupendmunuinsert.do")
	public String goChinsert() {
		System.out.println("상세코드 등록 페이지 호출");
		return "ccm/ccmupendmenuinsert";
	}
//	공통 상세코드 목록 페이지 이동 
	@RequestMapping("ccmupendmenu.do")
	public String goCh() {
		System.out.println("공통관리 목록 페이지 호출");
		return "ccm/ccmupendmenu";
	}
}
