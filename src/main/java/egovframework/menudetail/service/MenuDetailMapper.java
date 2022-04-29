package egovframework.menudetail.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("MenuDetailMapper")
public interface MenuDetailMapper {
	List<MenuDetailVO> selectMD();
}
