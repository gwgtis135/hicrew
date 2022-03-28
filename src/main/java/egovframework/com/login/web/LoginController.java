package egovframework.com.login.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.config.EgovLoginConfig;
import egovframework.com.login.service.LoginService;

@Controller
public class LoginController {

	
	@Resource(name = "egovLoginConfig")	 //사용자 인증수행제한에 대한 설정을 관리하는 클래스  
	EgovLoginConfig egovLoginConfig;
	
	/** EgovLoginService */
	@Autowired
	private LoginService loginService;
	
	/**
	 * 일반(세션) 로그인을 처리한다
	 * @param vo - 아이디, 비밀번호가 담긴 LoginVO
	 * @param request - 세션처리를 위한 HttpServletRequest
	 * @return result - 로그인결과(세션정보)
	 * @exception Exception
	 */
	
	@RequestMapping(value = "/login/actionLogin.do")
	public String actionLogin(@ModelAttribute("loginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model) throws Exception {

		// 2. 로그인 처리
		//LoginVO resultVO = loginService.actionLogin(loginVO);
		return null;
	}
}
