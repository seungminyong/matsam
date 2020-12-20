package kr.or.matsam.manage.time.serivce.impl;

import kr.or.matsam.manage.tag.entity.TagVO;
import kr.or.matsam.manage.time.entity.TimeVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("timeMapper")
@Mapper
public interface TimeMapper {
    public void insert(TimeVO timeVO) throws Exception;
    public List<TagVO> listAll(String resSerialNo) throws Exception;
    public void delete(String resSerialNo) throws Exception;
}
