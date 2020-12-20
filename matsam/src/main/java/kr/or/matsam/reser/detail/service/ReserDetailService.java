package kr.or.matsam.reser.detail.service;

import kr.or.matsam.reser.detail.entity.ReserDetailVO;
import org.springframework.stereotype.Service;

public interface ReserDetailService {
    public String getMaxNo() throws Exception;
    public void insert(ReserDetailVO detailVO) throws Exception;
    public ReserDetailVO selectByReser(String reserSerialNo) throws Exception;
}
