package kr.or.matsam.manage.service.impl;

import kr.or.matsam.manage.entity.ManageVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("manageMapper")
@Mapper
public interface ManageMapper {
    public List<ManageVO> listAll() throws Exception;
    public void insert(ManageVO manageVO) throws Exception;
    public ManageVO resDetail(String userSerialNo) throws Exception;
    public void modify(ManageVO manageVO) throws Exception;
    public String getMaxNo() throws Exception;
}
