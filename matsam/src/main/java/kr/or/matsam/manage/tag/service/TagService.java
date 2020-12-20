package kr.or.matsam.manage.tag.service;

import kr.or.matsam.manage.tag.entity.TagVO;

import java.util.List;

public interface TagService {
    public void insert(TagVO tagVO) throws Exception;
    public List<TagVO> listAll(String resSerialNo) throws Exception;
    public void delete(String resSerialNo) throws Exception;
}
