package egovframework.com.login.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.com.login.service.LoginMapper;
import egovframework.com.login.service.LoginService;
import egovframework.com.login.service.LoginVO;
import egovframework.com.utl.sim.service.EgovFileScrty;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginMapper loginMapper;

	@Override
	public Map<?, ?> selectLoginIncorrect(egovframework.com.login.service.LoginVO vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LoginVO actionLogin(LoginVO vo) throws Exception {
		//1. 입력한 비밀번호 암호화 한다.
		String enpassword = EgovFileScrty.encryptPassword(vo.getMNGR_PASSWORD(), vo.getMNGR_ID());
		vo.setMNGR_PASSWORD(enpassword);
		
		// 2. 아이디와 암호화된 비밀번호가 DB와 일치하는지 확인한다.
    	//LoginVO loginVO = loginDAO.actionLogin(vo);
		return null;
	}
	

}
