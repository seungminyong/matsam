package kr.or.matsam.reser.detail.service.impl;

import kr.or.matsam.reser.detail.entity.ReserDetailVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository("reserDetailMapper")
@Mapper
public interface ReserDetailMapper {
    public String getMaxNo() throws Exception;
    public void insert(ReserDetailVO detailVO) throws Exception;
    public ReserDetailVO selectByReser(String reserSerialNo) throws Exception;
}
