package kr.or.matsam.reser.service;

import kr.or.matsam.reser.entity.ReserVO;

import java.util.List;

public interface ReserService {
    public void insert(ReserVO reserVO) throws Exception;
    public ReserVO detail(String reserSerialNo) throws Exception;
    public List<ReserVO> listAll() throws Exception;
    public void modify(ReserVO reserVO) throws Exception;
    public void delete(ReserVO reserVO) throws Exception;
    public String getMaxNo() throws Exception;
}
