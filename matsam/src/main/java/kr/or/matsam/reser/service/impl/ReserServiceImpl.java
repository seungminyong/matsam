package kr.or.matsam.reser.service.impl;

import kr.or.matsam.reser.entity.ReserVO;
import kr.or.matsam.reser.service.ReserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("reserService")
public class ReserServiceImpl implements ReserService {
    @Resource(name = "reserMapper")
    ReserMapper reserMapper;

    @Override
    public void insert(ReserVO reserVO) throws Exception {
        reserMapper.insert(reserVO);
    }

    @Override
    public ReserVO detail(String reserSerialNo) throws Exception {
        return reserMapper.detail(reserSerialNo);
    }

    @Override
    public List<ReserVO> listAll() throws Exception {
        return reserMapper.listAll();
    }

    @Override
    public void modify(ReserVO reserVO) throws Exception {
        reserMapper.modify(reserVO);
    }

    @Override
    public void delete(ReserVO reserVO) throws Exception {
        reserMapper.delete(reserVO);
    }

    @Override
    public String getMaxNo() throws Exception {
        return reserMapper.getMaxNo();
    }
}
