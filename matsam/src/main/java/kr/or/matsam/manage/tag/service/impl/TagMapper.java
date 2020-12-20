package kr.or.matsam.manage.tag.service.impl;

import kr.or.matsam.manage.tag.entity.TagVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("tagMapper")
@Mapper
public interface TagMapper {
    public List<TagVO> listAll(String resSerialNo) throws Exception;
    public void insert(TagVO tagVO) throws Exception;
    public void delete(String resSerialNo) throws Exception;
}
