package kr.or.matsam.resmenu.service.impl;

import java.util.List;

import kr.or.matsam.resmenu.entity.ResMenuVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("resmenuMapper")
@Mapper
public interface ResmenuMapper {
	

	List<ResMenuVO> list();

	List<ResMenuVO> selectByStoreNum(String storeSerialNo) throws Exception;

	void add(ResMenuVO vo);
    
    ResMenuVO detail(String menuSerialNo);
    
	void delete(ResMenuVO vo);
  
    void modify(ResMenuVO vo);

}
