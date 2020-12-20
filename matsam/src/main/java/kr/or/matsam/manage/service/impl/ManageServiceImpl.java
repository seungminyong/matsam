package kr.or.matsam.manage.service.impl;

import kr.or.matsam.manage.entity.ManageVO;
import kr.or.matsam.manage.service.ManageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("manageService")
public class ManageServiceImpl implements ManageService {
    @Resource(name = "manageMapper")
    ManageMapper manageMapper;

    @Override
    public List<ManageVO> listAll() throws Exception {
        return manageMapper.listAll();
    }

    @Override
    public void insert(ManageVO manageVO) throws Exception {
        manageMapper.insert(manageVO);
    }

    @Override
    public ManageVO resDetail(String userSerialNo) throws Exception {
        return manageMapper.resDetail(userSerialNo);
    }

    @Override
    public void modify(ManageVO manageVO) throws Exception {
        manageMapper.modify(manageVO);
    }

    @Override
    public String getMaxNo() throws Exception {
        return manageMapper.getMaxNo();
    }
}
