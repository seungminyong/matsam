package kr.or.matsam.test.service.impl;

import kr.or.matsam.test.entity.MapTestVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("mapMapper")
@Mapper
public interface MapMapper {
    public void insert(MapTestVO mapVO) throws Exception;
    public List<MapTestVO> listAll() throws Exception;
}
