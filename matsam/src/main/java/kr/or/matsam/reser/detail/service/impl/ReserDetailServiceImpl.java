package kr.or.matsam.reser.detail.service.impl;

import kr.or.matsam.reser.detail.entity.ReserDetailVO;
import kr.or.matsam.reser.detail.service.ReserDetailService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("reserDetailService")
public class ReserDetailServiceImpl implements ReserDetailService {
    @Resource(name = "reserDetailMapper")
    ReserDetailMapper reserDetailMapper;

    @Override
    public String getMaxNo() throws Exception {
        return reserDetailMapper.getMaxNo();
    }

    @Override
    public void insert(ReserDetailVO detailVO) throws Exception {
        reserDetailMapper.insert(detailVO);
    }

    @Override
    public ReserDetailVO selectByReser(String reserSerialNo) throws Exception {
        return reserDetailMapper.selectByReser(reserSerialNo);
    }
}
