package kr.or.matsam.resmenu.service;

import kr.or.matsam.resmenu.entity.ResMenuVO;

import java.util.List;




public interface ResmenuService {

	List<ResMenuVO> list();
	List<ResMenuVO> selectByStoreNo(String storeSrialNum) throws Exception;

	void add(ResMenuVO vo);
    
    ResMenuVO detail(String menuSerialNo);
    
	void delete(String menuSerialNo);
  
    void modify(ResMenuVO vo);
}
