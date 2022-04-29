package egovframework.upendmenu.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("UpendMenuMapper")
public interface UpendMenuMapper {
	List<UpendMenuVO> selectAllum();
}
