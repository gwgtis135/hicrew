package egovframework.com.login.service.impl;

import java.util.Map;

import egovframework.com.login.service.LoginVO;

public interface LoginMapper  {

	public Map<?,?> selectLoginIncorrect(LoginVO vo);
	
}
