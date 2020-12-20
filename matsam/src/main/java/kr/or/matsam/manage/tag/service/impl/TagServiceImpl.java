package kr.or.matsam.manage.tag.service.impl;

import kr.or.matsam.manage.tag.entity.TagVO;
import kr.or.matsam.manage.tag.service.TagService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("tagService")
public class TagServiceImpl implements TagService {
    @Resource(name = "tagMapper")
    TagMapper tagMapper;

    @Override
    public void insert(TagVO tagVO) throws Exception {
        tagMapper.insert(tagVO);
    }

    @Override
    public List<TagVO> listAll(String resSerialNo) throws Exception {
        return tagMapper.listAll(resSerialNo);
    }

    @Override
    public void delete(String resSerialNo) throws Exception {
        tagMapper.delete(resSerialNo);
    }
}
