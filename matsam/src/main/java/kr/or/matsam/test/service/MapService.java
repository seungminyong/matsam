package kr.or.matsam.test.service;

import kr.or.matsam.test.entity.MapTestVO;

import java.util.List;

public interface MapService {
    public void insert(MapTestVO mapVO) throws Exception;
    public List<MapTestVO> listAll() throws Exception;
}
