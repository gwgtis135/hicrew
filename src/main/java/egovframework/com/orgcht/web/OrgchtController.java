package egovframework.com.orgcht.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrgchtController {

	@RequestMapping("orgcht.do")
	public String goOrgcht() {
		System.out.println("조직도 관리 컨트롤러 호출");
		return "orgcht/Orgcht";
	}
	@RequestMapping("orgchtManage.do")
	public String goOrgchtManage() {
		System.out.println("조직도 관리 컨트롤러 호출");
		return "orgcht/OrgchtManage";
	}
	
}
