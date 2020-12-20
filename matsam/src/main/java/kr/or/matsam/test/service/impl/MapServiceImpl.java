package kr.or.matsam.test.service.impl;

import kr.or.matsam.test.entity.MapTestVO;
import kr.or.matsam.test.service.MapService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("mapService")
public class MapServiceImpl implements MapService {
    @Resource(name = "mapMapper")
    MapMapper mapMapper;
    @Override
    public void insert(MapTestVO mapVO) throws Exception {
        mapMapper.insert(mapVO);
    }

    @Override
    public List<MapTestVO> listAll() throws Exception {
        return mapMapper.listAll();
    }
}
