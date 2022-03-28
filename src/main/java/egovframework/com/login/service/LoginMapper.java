package egovframework.com.login.service;

import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("LoginMapper")
public interface LoginMapper  {

	public Map<?,?> selectLoginIncorrect(LoginVO vo);
	
}
