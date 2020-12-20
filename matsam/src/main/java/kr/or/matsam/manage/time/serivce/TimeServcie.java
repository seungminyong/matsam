package kr.or.matsam.manage.time.serivce;

import kr.or.matsam.manage.tag.entity.TagVO;
import kr.or.matsam.manage.time.entity.TimeVO;

import java.util.List;

public interface TimeServcie {
    public void insert(TimeVO timeVO) throws Exception;
    public List<TagVO> listAll(String resSerialNo) throws Exception;
    public void delete(String resSerialNo) throws Exception;
}
