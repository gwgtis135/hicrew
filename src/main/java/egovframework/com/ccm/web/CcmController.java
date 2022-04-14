package egovframework.com.ccm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CcmController {

	@RequestMapping("ccmupendmenu.do")
	public String goCh() {
		System.out.println("공통관리 페이지 호출");
		return "ccm/ccmupendmenu";
	}
}
