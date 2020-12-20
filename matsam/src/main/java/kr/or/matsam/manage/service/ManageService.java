package kr.or.matsam.manage.service;

import kr.or.matsam.manage.entity.ManageVO;

import java.util.List;

public interface ManageService {
    public List<ManageVO> listAll() throws Exception;
    public void insert(ManageVO manageVO) throws Exception;
    public ManageVO resDetail(String userSerialNo) throws Exception;
    public void modify(ManageVO manageVO) throws Exception;
    public String getMaxNo() throws Exception;
}
