package kr.or.matsam.manage.time.serivce.impl;

import kr.or.matsam.manage.tag.entity.TagVO;
import kr.or.matsam.manage.time.entity.TimeVO;
import kr.or.matsam.manage.time.serivce.TimeServcie;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("timeService")
public class TimeServiceImpl implements TimeServcie {
    @Resource(name = "timeMapper")
    TimeMapper timeMapper;


    @Override
    public void insert(TimeVO timeVO) throws Exception {
        timeMapper.insert(timeVO);
    }

    @Override
    public List<TagVO> listAll(String resSerialNo) throws Exception {
        return timeMapper.listAll(resSerialNo);
    }

    @Override
    public void delete(String resSerialNo) throws Exception {
        timeMapper.delete(resSerialNo);
    }
}
