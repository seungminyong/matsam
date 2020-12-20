package kr.or.matsam.resmenu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import kr.or.matsam.resmenu.entity.ResMenuVO;
import kr.or.matsam.resmenu.service.ResmenuService;
import org.springframework.stereotype.Service;


@Service("resmenuService")
public class ResmenuServiceImpl implements ResmenuService {

	@Resource(name="resmenuMapper")
    ResmenuMapper mapper;
	
	@Override
	public List<ResMenuVO> list() {
		return mapper.list();	
		}

	@Override
	public List<ResMenuVO> selectByStoreNo(String storeSrialNum) throws Exception {
		return mapper.selectByStoreNum(storeSrialNum);
	}

	@Override
	public void add(ResMenuVO vo) {
		System.out.println("메뉴 추가 왜 안 되냐:");
		mapper.add(vo);
		
	}

	@Override
	public ResMenuVO detail(String menuSerialNo) {
		return mapper.detail(menuSerialNo);
	}

	@Override
	public void delete(String menuSerialNo) {

	}

	@Override
	public void modify(ResMenuVO vo) {
		mapper.modify(vo);
		
	}

	

}
