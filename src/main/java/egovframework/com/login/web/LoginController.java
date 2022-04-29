package egovframework.com.login.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value="login.do")
	public String goLogin() {
		System.out.println("로그인 페이지 호출");
		return "login/Login";
	}
}
