package kr.or.matsam.reser.service.impl;

import kr.or.matsam.reser.entity.ReserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("reserMapper")
@Mapper
public interface ReserMapper {
    public void insert(ReserVO reserVO) throws Exception;
    public ReserVO detail(String reserSerialNo) throws Exception;
    public List<ReserVO> listAll() throws Exception;
    public void modify(ReserVO reserVO) throws Exception;
    public void delete(ReserVO reserVO) throws Exception;
    public String getMaxNo() throws Exception;
}
