package egovframework.com.groupware.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupWareController {

	@RequestMapping("groupware.do")
	public String goGroupWare() {
		System.out.println("그룹웨어 iframe 실행");
		return "main/groupware";
	}
}
