package egovframework.com.login.service;

import java.util.Map;


public interface LoginService {

	/***
	 *
	 * @param vo LoginVO
	 * @return Map
	 * @throws Exception
	 */
	Map<?,?> selectLoginIncorrect(LoginVO vo) throws Exception;
	
	/**
	 * 일반 로그인을 처리한다
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    LoginVO actionLogin(LoginVO vo) throws Exception;
}
